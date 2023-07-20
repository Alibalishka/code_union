// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelProfile _$ModelProfileFromJson(Map<String, dynamic> json) => ModelProfile(
      id: json['id'] as int,
      email: json['email'] as String,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$ModelProfileToJson(ModelProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nickname': instance.nickname,
    };
