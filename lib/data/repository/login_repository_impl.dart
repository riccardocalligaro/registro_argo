import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:registro_argo/core/error/failures.dart';
import 'package:registro_argo/core/network/network_info.dart';
import 'package:registro_argo/data/network/service/api/argo_client.dart';
import 'package:registro_argo/domain/entity/api_responses/login_response.dart';
import 'package:registro_argo/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final ArgoClient argoClient;
  final NetworkInfo networkInfo;

  LoginRepositoryImpl({
    @required this.argoClient,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, ApiLoginResponse>> login({
    String schoolCode,
    String username,
    String password,
  }) async {
    try {
      final loginResponse = await argoClient.login(
        schoolCode: schoolCode,
        username: username,
        password: password,
      );
      return Right(loginResponse);
    } on ServerFailure {
      return Left(ServerFailure(statusCode: 200));
    }
  }
}
