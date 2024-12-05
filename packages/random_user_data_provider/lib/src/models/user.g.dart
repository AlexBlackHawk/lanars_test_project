// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      first: json['first'] as String,
      last: json['last'] as String,
      email: json['email'] as String,
      medium: json['medium'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'email': instance.email,
      'medium': instance.medium,
    };
