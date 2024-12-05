import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    required this.first,
    required this.last,
    required this.email,
    required this.medium,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  final String first;
  final String last;
  final String email;
  final String medium;
}