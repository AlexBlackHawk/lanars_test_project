import 'package:dio/dio.dart';

import 'models/models.dart';

class PexelsDataProvider {
  PexelsDataProvider({Dio? dio})
      : _dio = dio ?? Dio();

  static const _apiKey = "NEJ5B2TeyC3Jm7HttNFMzi5vcxBMb9KeeMc5QnuqjyVKXUBRDYiUUYrA";
  static const _url = "https://api.pexels.com/v1/curated?per_page=50";

  final Dio _dio;

  Future<List> getPhotos() async {
    _dio.options.headers["Authorization"] = _apiKey;
    final response = await _dio.get(
      _url,
    );
    Map<String, dynamic> photoData = response.data as Map<String, dynamic>;
    List photos = photoData["photos"] as List;
    return photos;
  }

  Photo transformPhoto(Map<String, dynamic> photoMap) {
    return Photo.fromJson(photoMap);
  }
}
