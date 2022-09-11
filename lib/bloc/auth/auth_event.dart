part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthRegister extends AuthEvent {
  final RegisterFormModel data;
  const AuthRegister(this.data);

  @override
  List<Object> get props => [data];
}

class AuthLogin extends AuthEvent {
  final LoginFormModel data;
  const AuthLogin(this.data);

  @override
  List<Object> get props => [data];
}

class AuthGetCurrent extends AuthEvent {}

class AuthUpdateUser extends AuthEvent {
  final UserModel user;
  final UserEditFormModel data;
  const AuthUpdateUser(this.user, this.data);

  @override
  List<Object> get props => [data, user];
}

class AuthLogout extends AuthEvent {}

class AuthChangePassword extends AuthEvent {
  final ChangePasswordFormModel data;
  const AuthChangePassword(this.data);

  @override
  List<Object> get props => [data];
}
