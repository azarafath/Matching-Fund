class UserEditFormModel {
  final int? id;
  final String? token;
  final String? name;
  final String? email;
  final String? alamat;
  final String? hobi;
  final String? sekolah;

  UserEditFormModel({
    this.id,
    this.token,
    this.name,
    this.email,
    this.alamat,
    this.hobi,
    this.sekolah,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['token'] = token;
    data['name'] = name;
    data['email'] = email;
    data['alamat'] = alamat;
    data['hobi'] = hobi;
    data['sekolah'] = sekolah;
    return data;
  }

  UserEditFormModel copyWith({
    int? id,
    String? token,
    String? name,
    String? email,
    String? alamat,
    String? hobi,
    String? sekolah,
  }) =>
      UserEditFormModel(
        id: id ?? this.id,
        token: token ?? this.token,
        name: name ?? this.name,
        email: email ?? this.email,
        alamat: alamat ?? this.alamat,
        hobi: hobi ?? this.hobi,
        sekolah: sekolah ?? this.sekolah,
      );
}
