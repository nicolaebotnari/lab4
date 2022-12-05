import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lab4v1/Models/goals.dart';

import '../Models/daily_exercices.dart';



class HomeController extends GetxController {
  RxList<Daily> daily_exercices = RxList();
  RxList<Goals> goals = RxList();

  Future<void> readJsonFile() async {
    final String jsonString =
    await rootBundle.loadString('assets/fitness.json');
    final data = await json.decode(jsonString);

    goals.value = (data['goals'] as List)
        .map((value) => Goals.fromJson(value))
        .toList();
    daily_exercices.value = (data['daily_exercices'] as List).map((value) => Daily.fromJson(value)).toList();

  }
}