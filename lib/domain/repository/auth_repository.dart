import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:registro_argo/core/error/failures.dart';
import 'package:registro_argo/data/db/moor_database.dart';

abstract class AuthRepository {
  /// Logs in one user
  ///  - [School code] the user school code `SS11111`
  ///  - [Username] username `john`
  ///  - [Password] user password `x`
  Future<Either<Failure, Profile>> login({
    @required String schoolCode,
    @required String username,
    @required String password,
  });
}
