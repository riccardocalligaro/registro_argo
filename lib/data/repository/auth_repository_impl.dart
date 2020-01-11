import 'package:dartz/dartz.dart';
import 'package:f_logs/f_logs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:registro_argo/core/error/failures.dart';
import 'package:registro_argo/core/network/network_info.dart';
import 'package:registro_argo/data/db/dao/profile_dao.dart';
import 'package:registro_argo/data/db/moor_database.dart';
import 'package:registro_argo/data/network/service/api/argo_client.dart';
import 'package:registro_argo/domain/entity/mappers.dart';
import 'package:registro_argo/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ProfileDao profileDao;
  final ArgoClient argoClient;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    @required this.argoClient,
    @required this.networkInfo,
    @required this.profileDao,
  });

  @override
  Future<Either<Failure, Profile>> login({
    String schoolCode,
    String username,
    String password,
  }) async {
    try {
      final apiLoginResponse = await argoClient.login(
        schoolCode: schoolCode,
        username: username,
        password: password,
      );

      FLog.info(text: 'Got api login response');

      final userInfoResponse = await argoClient.getUserInfo(
        schoolCode: schoolCode,
        username: username,
        password: password,
        token: apiLoginResponse.token,
      );

      FLog.info(text: 'Got user info response');

      print(userInfoResponse.toJson().toString());
      // We convert the data we got to a database entity
      final profile = Mappers.convertApiLoginResponseAndUserInfoToProfile(
        apiLoginResponse: apiLoginResponse,
        userInfoResponse: userInfoResponse,
        username: username,
      );

      FLog.info(text: 'Converted to profile mapper ');

      // Insert the profile in to the datbase
      profileDao.insertProfile(profile);

      FLog.info(text: 'Inserted profile in database');

      // We need now to save the user password
      final storage = new FlutterSecureStorage();

      // Flutter secure storage encrypts the password
      await storage.write(key: username, value: password);
      FLog.info(text: 'Saved password');

      return Right(profile);
    } on ServerFailure catch (serverFailure) {
      FLog.error(
        text:
            'Got a server failure ${serverFailure.statusCode} when logging in user',
      );
      return Left(serverFailure);
    } on DatabaseFailure {
      FLog.error(text: 'Got a database failure when trying to insert profile');
      return Left(DatabaseFailure());
    }
  }

  @override
  Future<bool> isUserLoggedIn() async {
    final profile = await profileDao.getLoggedInProfiles();
    return profile.length >= 1;
  }
}
