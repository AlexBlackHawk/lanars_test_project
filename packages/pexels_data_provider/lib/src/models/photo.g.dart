// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      original: json['original'] as String,
      photographer: json['photographer'] as String,
      alt: json['alt'] as String,
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'original': instance.original,
      'photographer': instance.photographer,
      'alt': instance.alt,
    };
