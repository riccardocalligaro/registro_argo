import 'package:dartz/dartz.dart';
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

      final userInfoResponse = await argoClient.getUserInfo(
        schoolCode: schoolCode,
        username: username,
        password: password,
        token: apiLoginResponse.token,
      );

      // We convert the data we got to a database entity
      final profile = Mappers.convertApiLoginResponseAndUserInfoToProfile(
        apiLoginResponse: apiLoginResponse,
        userInfoResponse: userInfoResponse,
        username: username,
      );

      // Insert the profile in to the datbase
      profileDao.insertProfile(profile);

      // We need now to save the user password
      final storage = new FlutterSecureStorage();
      // Flutter secure storage encrypts the password
      await storage.write(key: username, value: password);

      return Right(profile);
    } on ServerFailure catch (serverFailure) {
      return Left(serverFailure);
    } on DatabaseFailure {
      return Left(DatabaseFailure());
    }
  }
}
