import 'package:dio/dio.dart';

import 'models/models.dart';

class RandomUserDataProvider {
  RandomUserDataProvider({Dio? dio})
      : _dio = dio ?? Dio();

  static const _url = "https://randomuser.me/api/";

  final Dio _dio;

  Future<dynamic> getUser(String email, String password) async {
    final response = await _dio.post(
      _url,
      queryParameters: <String, dynamic>{
        "email": email,
        "password": password,
      }
    );
    Map<String, dynamic> userData = response.data as Map<String, dynamic>;
    return userData;
  }

  User transformUser(Map<String, dynamic> userMap) {
    return User.fromJson(userMap);
  }

}
