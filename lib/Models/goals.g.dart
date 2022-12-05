// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goals _$GoalsFromJson(Map<String, dynamic> json) => Goals(
      cover: json['cover'] as String,
      title: json['title'] as String,
      subtitle: json['sub_title'] as String,
      caloriescount: json['calories_count'] as int,
      durationseconds: json['duration_seconds'] as int,
    );

Map<String, dynamic> _$GoalsToJson(Goals instance) => <String, dynamic>{
      'cover': instance.cover,
      'title': instance.title,
      'sub_title': instance.subtitle,
      'calories_count': instance.caloriescount,
      'duration_seconds': instance.durationseconds,
    };
