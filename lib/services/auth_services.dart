import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:matchingfund/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:matchingfund/shared/shared.dart';

class AuthServices {
  Future<bool> register(RegisterFormModel data) async {
    try {
      final result = await http.post(
        Uri.parse('${ApiPath.baseUrl}/register'),
        body: data.toJson(),
      );

      if (result.statusCode == 200 &&
          jsonDecode(result.body)['status'] == 'success') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> login(LoginFormModel data) async {
    try {
      final result = await http.post(
        Uri.parse('${ApiPath.baseUrl}/login'),
        body: data.toJson(),
      );

      if (result.statusCode == 200 &&
          jsonDecode(result.body)['status'] == true) {
        final user = UserModel.fromJson(jsonDecode(result.body)['data']);
        final token = jsonDecode(result.body)['token'];
        await storeCredentialToLocal(token: token, data: data);
        return user;
      } else {
        throw Exception('Login Failed');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      final token = await getToken();
      final result = await http.post(
        Uri.parse('${ApiPath.baseUrl}/logout'),
        body: {
          'token': token,
        },
      );

      if (result.statusCode == 200) {
        await clearLocalStorage();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateUser(UserEditFormModel data) async {
    try {
      final token = await getToken();
      final user = data.copyWith(token: token);
      final result = await http.post(
        Uri.parse('${ApiPath.baseUrl}/update_user/${user.id}'),
        body: data.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> changePassword(ChangePasswordFormModel data) async {
    try {
      final token = await getToken();
      final user = data.copyWith(token: token);
      final result = await http.post(
        Uri.parse('${ApiPath.baseUrl}/change_password/${user.id}'),
        body: data.toJson(),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> storeCredentialToLocal({
    required String token,
    required LoginFormModel data,
  }) async {
    try {
      const storage = FlutterSecureStorage();
      await storage.write(key: 'token', value: token);
      await storage.write(key: 'email', value: data.email!);
      await storage.write(key: 'password', value: data.password!);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getToken() async {
    String token = '';

    const storage = FlutterSecureStorage();
    String? value = await storage.read(key: 'token');

    if (value != null) {
      token = value;
    }

    return token;
  }

  @override
  Future<void> clearLocalStorage() async {
    try {
      const storage = FlutterSecureStorage();
      await storage.deleteAll();
    } catch (e) {
      rethrow;
    }
  }
}
