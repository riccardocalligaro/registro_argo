import 'package:flutter/material.dart';
import 'package:registro_argo/domain/entity/api_responses/login_response.dart';

/// [API] Client for the [Argo] eletronic school record
abstract class ArgoClient {
  /// Logs in one user `/login`
  Future<ApiLoginResponse> login({
    @required String schoolCode,
    @required String username,
    @required String password,
  });
}
