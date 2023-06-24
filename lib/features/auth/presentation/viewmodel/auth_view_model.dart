import 'dart:io';

import 'package:chitto_tatto/config/router/app_routes.dart';
import 'package:chitto_tatto/core/common/widgets/my_snackbar.dart';
import 'package:chitto_tatto/features/auth/domain/entity/user_entity.dart';
import 'package:chitto_tatto/features/auth/domain/use_case/auth_usecase.dart';
import 'package:chitto_tatto/features/auth/presentation/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, AuthState>((ref) {
  return AuthViewModel(
    ref.read(authUseCaseProvider),
  );
});

class AuthViewModel extends StateNotifier<AuthState> {
  final AuthUseCase _authUseCase;

  AuthViewModel(this._authUseCase) : super(AuthState(isLoading: false));

  Future<void> uploadImage(File? file) async {
    state = state.copyWith(isLoading: true);
    var data = await _authUseCase.uploadProfilePicture(file!);
    data.fold((l) {
      state = state.copyWith(isLoading: false, error: l.error);
    }, (imageName) {
      state = state.copyWith(isLoading: false, imageName: imageName);
    });
  }

  Future<void> registerUser(UserEntity user) async {
    state = state.copyWith(isLoading: true);
    var data = await _authUseCase.registerUser(user);
    data.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.error,
      ),
      (success) => state = state.copyWith(
        isLoading: false,
        error: null,
      ),
    );
  }

  Future<void> loginUser(
      BuildContext context, String email, String password) async {
    state = state.copyWith(isLoading: true);
    // bool isLogin = false;
    var data = await _authUseCase.loginUser(email, password);
    data.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.error);
        showSnackBar(
            context: context,
            color: Colors.red,
            message: "Invalid Credentials");
      },
      (success) {
        state = state.copyWith(isLoading: false, error: null);
        Navigator.popAndPushNamed(context, AppRoute.bottomBarRoute);
      },
    );

    // return isLogin;
  }
}
