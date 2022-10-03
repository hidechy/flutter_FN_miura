// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['user_id'] as int,
      accessToken: json['access_token'] as String,
      email: json['email'] as String,
      nickname: json['nickname'] as String?,
      birthday: json['birthday'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'access_token': instance.accessToken,
      'email': instance.email,
      'nickname': instance.nickname,
      'birthday': instance.birthday,
      'postal_code': instance.postalCode,
    };
