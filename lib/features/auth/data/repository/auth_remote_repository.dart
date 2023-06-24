import 'dart:io';

import 'package:chitto_tatto/core/failure/failure.dart';
import 'package:chitto_tatto/features/auth/data/data_source/remote/auth_remote_data_source.dart';
import 'package:chitto_tatto/features/auth/domain/entity/user_entity.dart';
import 'package:chitto_tatto/features/auth/domain/repository/auth_domain_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRemoteRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthRemoteRepository(
    ref.read(authRemoteDataSourceProvider),
  );
});

class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRemoteRepository(this._authRemoteDataSource);
  @override
  Future<Either<Failure, String>> uploadProfilePicture(File file) {
    return _authRemoteDataSource.uploadProfilePicture(file);
  }

  @override
  Future<Either<Failure, bool>> loginUser(String email, String password) {
    // TODO: implement loginStudent
    return _authRemoteDataSource.loginUser(email, password);
  }

  @override
  Future<Either<Failure, bool>> registerUser(UserEntity user) {
    // TODO: implement registerStudent
    return _authRemoteDataSource.registerUser(user);
  }
}
