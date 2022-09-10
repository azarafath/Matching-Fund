class ChangePasswordFormModel {
  final int? id;
  final String? token;
  final String? password;
  final String? newPassword;
  final String? passwordConfirmation;

  ChangePasswordFormModel({
    this.id,
    this.token,
    this.password,
    this.newPassword,
    this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['token'] = token;
    data['password'] = password;
    data['new_password'] = newPassword;
    data['password_confirmation'] = passwordConfirmation;
    return data;
  }

  ChangePasswordFormModel copyWith({
    int? id,
    String? token,
    String? password,
    String? newPassword,
    String? passwordConfirmation,
  }) =>
      ChangePasswordFormModel(
        id: id ?? this.id,
        token: token ?? this.token,
        password: password ?? this.password,
        newPassword: newPassword ?? this.newPassword,
        passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
      );
}
