import 'package:dio/dio.dart';

import 'models/models.dart';

import 'package:random_user_data_provider/random_user_data_provider.dart';

class RandomUserDataProvider {
  RandomUserDataProvider({Dio? dio})
      : _dio = dio ?? Dio();

  static const _url = "https://randomuser.me/api/";

  final Dio _dio;

  Future<User?> getUser(String email, String password) async {
    final response = await _dio.post(
      _url,
      queryParameters: <String, dynamic>{
        "email": email,
        "password": password,
      }
    );
    if (response.statusCode != 200) return null;
    Map<String, dynamic> userData = response.data as Map<String, dynamic>;
    return User.fromJson(userData);
  }

}
