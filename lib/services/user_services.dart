import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:matchingfund/shared/api_path.dart';

import '../models/models.dart';
import 'services.dart';

class UserServices {
  Future<UserModel> getUser() async {
    try {
      final token = await AuthServices().getToken();

      final res = await http.get(
        Uri.parse('${ApiPath.baseUrl}/user'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final user = UserModel.fromJson(data);

        return user;
      }

      return throw jsonDecode(res.body)['message'];
    } catch (e) {
      rethrow;
    }
  }
}
