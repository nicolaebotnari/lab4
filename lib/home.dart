import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab4v1/Widget/DayliTask.dart' show Dayli, DayliTask;
import 'package:lab4v1/Widget/Header.dart';

import 'Controller/HomeController.dart';
import 'Widget/Training.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  void initState() {
    //Get.lazyPut(() => HomeController());
    Get.put(HomeController());
    HomeController controller = Get.find();
    controller.readJsonFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Color(),
        backgroundColor: Colors.transparent,

        elevation: 0,
        title: Container(
          child: SizedBox(
            //width: 77,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                  'Start New Goal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff00132C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),

                  Text(
                    'See all',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff198FB3),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),

              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [


          Obx(
          () => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
                height: 278,
                width: 500,
                child: ListView.builder(
                    itemCount: controller.goals.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Header(
                        goal: controller.goals[index],
                      );
                    }),
              ),
          ),
          ),


          Padding(
            padding:  EdgeInsets.only(top: 4),
            child: Container(
              //width: 358,
              height: 24,
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                scrollDirection: Axis.horizontal,
                children:  <Widget>[
                  DayliTask(),
                ],
              ),
            ),
          ),


          Obx(  () => Padding(
              padding: const EdgeInsets.fromLTRB(16, 16,16,0),
              child: Container(
                height: 248,
                width: 400,
                child: ListView.builder(
                    itemCount: controller.daily_exercices.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Exercise(
                          dail: controller.daily_exercices[index],
                          );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
