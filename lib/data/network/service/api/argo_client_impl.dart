import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:registro_argo/core/error/failures.dart';
import 'package:registro_argo/data/network/service/api/argo_client.dart';
import 'package:registro_argo/domain/entity/api_responses/login_response.dart';
import 'package:registro_argo/domain/entity/api_responses/user_info_response.dart';
import 'package:registro_argo/utils/constants/argo_constants.dart';

class ArgoClientImpl implements ArgoClient {
  final Dio dio;
  final String baseUrl;

  ArgoClientImpl({
    @required this.dio,
    @required this.baseUrl,
  });

  @override
  Future<ApiLoginResponse> login({
    String schoolCode,
    String username,
    String password,
  }) async {
    Map<String, dynamic> loginHeaders = {
      ArgoConstants.API_HEADER_SCHOOL_CODE: schoolCode,
      ArgoConstants.API_HEADER_USER_ID: username,
      ArgoConstants.API_HEADER_PASSWORD: password,
    };
    final Response _result = await dio.request(
      '/login',
      options: RequestOptions(
          method: 'GET', headers: loginHeaders, baseUrl: baseUrl),
    );
    if (_result.statusCode != 200 && _result.data != null) {
      throw ServerFailure(statusCode: _result.statusCode);
    }

    final value = ApiLoginResponse.fromJson(_result.data);
    return value;
  }

  @override
  Future<ApiUserInfoResponse> getUserInfo({
    String schoolCode,
    String username,
    String password,
    String token,
  }) async {
    Map<String, dynamic> loginHeaders = {
      ArgoConstants.API_HEADER_SCHOOL_CODE: schoolCode,
      ArgoConstants.API_HEADER_USER_ID: username,
      ArgoConstants.API_HEADER_PASSWORD: password,
      ArgoConstants.API_HEADER_AUTH_TOKEN: token,
      ArgoConstants.API_HEADER_PRG_ALUNNO: '0',
      ArgoConstants.API_HEADER_PRG_SCHEDA: '0',
      ArgoConstants.API_HEADER_PRG_SCUOLA: '0',
    };
    final Response _result = await dio.request(
      '/login',
      options: RequestOptions(
          method: 'GET', headers: loginHeaders, baseUrl: baseUrl),
    );
    if (_result.statusCode != 200 && _result.data != null) {
      throw ServerFailure(statusCode: _result.statusCode);
    }

    final value = ApiUserInfoResponse.fromJson(_result.data);
    return value;
  }
}
