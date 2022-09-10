class RegisterFormModel {
  final String? name;
  final String? email;
  final String? password;
  final String? alamat;
  final String? hobi;
  final String? sekolah;

  RegisterFormModel({
    this.name,
    this.email,
    this.password,
    this.alamat,
    this.hobi,
    this.sekolah,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['alamat'] = alamat;
    data['hobi'] = hobi;
    data['sekolah'] = sekolah;
    return data;
  }

  RegisterFormModel copyWith({
    String? name,
    String? email,
    String? password,
    String? alamat,
    String? hobi,
    String? sekolah,
  }) =>
      RegisterFormModel(
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        alamat: alamat ?? this.alamat,
        hobi: hobi ?? this.hobi,
        sekolah: sekolah ?? this.sekolah,
      );
}
