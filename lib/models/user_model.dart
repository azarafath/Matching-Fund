class UserModel {
  int? id;
  String? name;
  String? email;
  String? alamat;
  String? hobi;
  String? sekolah;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.alamat,
    this.hobi,
    this.sekolah,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    alamat = json['alamat'];
    hobi = json['hobi'];
    sekolah = json['sekolah'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['alamat'] = alamat;
    data['hobi'] = hobi;
    data['sekolah'] = sekolah;
    data['token'] = token;
    return data;
  }

  UserModel copyWith({
    String? name,
    String? email,
    String? alamat,
    String? hobi,
    String? sekolah,
  }) =>
      UserModel(
        id: id,
        name: name ?? this.name,
        email: email ?? this.email,
        alamat: alamat ?? this.alamat,
        hobi: hobi ?? this.hobi,
        sekolah: sekolah ?? this.sekolah,
        token: token,
      );
}
