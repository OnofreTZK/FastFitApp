// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonalModel _$PersonalModelFromJson(Map<String, dynamic> json) =>
    PersonalModel(
      name: json['name'] as String,
      age: json['age'] as int,
      email: json['email'] as String,
      password: json['password'] as String,
      clients: json['clients'] as List<dynamic>,
    );

Map<String, dynamic> _$PersonalModelToJson(PersonalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'email': instance.email,
      'password': instance.password,
      'clients': instance.clients,
    };
