// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_exercices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      title: json['title'] as String,
      cover: json['cover'] as String,
      caloriescount: json['calories_count'] as int,
      durationseconds: json['duration_seconds'] as int,
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'title': instance.title,
      'cover': instance.cover,
      'calories_count': instance.caloriescount,
      'duration_seconds': instance.durationseconds,
    };
