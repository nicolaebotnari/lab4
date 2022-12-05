
import 'package:json_annotation/json_annotation.dart';

part 'daily_exercices.g.dart';


@JsonSerializable()
class Daily{
  final String title;
  final String cover;
  @JsonKey(name: 'calories_count')
  final int caloriescount;
  @JsonKey(name: 'duration_seconds')
  final int durationseconds;


  Daily({
    required this.title,
    required this.cover,
    required this.caloriescount,
    required this.durationseconds});


  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);


  Map<String, dynamic> toJson() => _$DailyToJson(this);
}