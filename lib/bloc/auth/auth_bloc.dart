import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matchingfund/services/auth_services.dart';

import '../../models/models.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is AuthRegister) {
        try {
          emit(AuthLoading());

          final result = await AuthServices().register(event.data);

          if (result == true) {
            emit(AuthRegisterSuccess());
          } else {
            emit(const AuthFailed('Email sudah dipakai'));
          }
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthLogin) {
        try {
          emit(AuthLoading());
          final result = await AuthServices().login(event.data);

          emit(AuthSuccess(result));
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthGetCurrent) {
        try {
          emit(AuthLoading());

          final LoginFormModel res =
              await AuthServices().getCredentialFromLocal();

          final UserModel user = await AuthServices().login(res);

          emit(AuthSuccess(user));
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthUpdateUser) {
        try {
          emit(AuthLoading());

          await AuthServices().updateUser(event.data);

          final updatedUser = event.user.copyWith(
            name: event.data.name,
            email: event.data.email,
            alamat: event.data.alamat,
            hobi: event.data.hobi,
            sekolah: event.data.sekolah,
          );

          emit(AuthSuccess(updatedUser));
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthChangePassword) {
        try {
          emit(AuthLoading());

          await AuthServices().changePassword(event.data);
          emit(AuthChangePasswordSuccess());
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }

      if (event is AuthLogout) {
        try {
          emit(AuthLoading());

          await AuthServices().logout();

          emit(AuthInitial());
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }
    });
  }
}
