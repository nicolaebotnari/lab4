
import 'package:json_annotation/json_annotation.dart';

part 'goals.g.dart';


@JsonSerializable()
class Goals{
  final String cover;
  final String title;
  @JsonKey(name: 'sub_title')
  final String subtitle;
  @JsonKey(name: 'calories_count')
  final int caloriescount;
  @JsonKey(name: 'duration_seconds')
  final int durationseconds;


  Goals({required this.cover,
    required this.title,
    required this.subtitle,
    required this.caloriescount,
    required this.durationseconds});

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

  Map<String, dynamic> toJson() => _$GoalsToJson(this);
}