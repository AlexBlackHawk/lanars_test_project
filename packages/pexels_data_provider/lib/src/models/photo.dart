import "package:json_annotation/json_annotation.dart";

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  const Photo({
    required this.original,
    required this.photographer,
    required this.alt,
  });

  factory Photo.fromJson(Map<String, dynamic> json) =>
      _$PhotoFromJson(json);

  final String original;
  final String photographer;
  final String alt;
}