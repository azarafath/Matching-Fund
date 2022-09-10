class LoginFormModel {
  final String? email;
  final String? password;

  LoginFormModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  LoginFormModel copyWith({
    String? email,
    String? password,
  }) =>
      LoginFormModel(
        email: email ?? this.email,
        password: password ?? this.password,
      );
}
