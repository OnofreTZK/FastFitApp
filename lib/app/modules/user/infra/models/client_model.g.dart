// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) => ClientModel(
      name: json['name'] as String,
      age: json['age'] as int,
      email: json['email'] as String,
      password: json['password'] as String,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$ClientModelToJson(ClientModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
      'password': instance.password,
      'weight': instance.weight,
      'height': instance.height,
    };
