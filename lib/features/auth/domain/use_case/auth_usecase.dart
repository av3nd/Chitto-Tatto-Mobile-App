import 'dart:io';

import 'package:chitto_tatto/core/failure/failure.dart';
import 'package:chitto_tatto/features/auth/domain/entity/user_entity.dart';
import 'package:chitto_tatto/features/auth/domain/repository/auth_domain_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authUseCaseProvider = Provider((ref) {
  return AuthUseCase(
    ref.read(authRepositoryProvider),
  );
});

class AuthUseCase {
  final IAuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<Either<Failure, String>> uploadProfilePicture(File file) async {
    return await _authRepository.uploadProfilePicture(file);
  }

  Future<Either<Failure, bool>> registerUser(UserEntity user) async {
    return await _authRepository.registerUser(user);
  }

  Future<Either<Failure, bool>> loginUser(String email, String password) async {
    return await _authRepository.loginUser(email, password);
  }
}
