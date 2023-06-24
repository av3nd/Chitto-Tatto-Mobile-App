import 'dart:io';

import 'package:chitto_tatto/core/failure/failure.dart';
import 'package:chitto_tatto/features/auth/data/repository/auth_remote_repository.dart';
import 'package:chitto_tatto/features/auth/domain/entity/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return ref.read(authRemoteRepositoryProvider);
});

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerUser(UserEntity user);
  Future<Either<Failure, bool>> loginUser(String email, String password);
  Future<Either<Failure, String>> uploadProfilePicture(File file);
}
