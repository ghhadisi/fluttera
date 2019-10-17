// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity2 _$UserEntity2FromJson(Map<String, dynamic> json) {
  return UserEntity2(
    id: json['id'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$UserEntity2ToJson(UserEntity2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
    };
