
import 'package:flutter/material.dart';
import 'package:lab4v1/Models/goals.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.goal});
  final Goals goal;



  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                height: 257,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  //color: Colors.blue,
                  color: const Color(0xffFFFFFF),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                width: 310,
                height: 144,
                child:  DecoratedBox(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image:  DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(goal.cover),
                    ),
                    //color: Colors.red,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 144,
              left: 12,
              child: SizedBox(
                width: 368,
                height: 160,

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 131, 64),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 32,
                        width: 200,
                        child: Text(
                          goal.title,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff00132C),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        height: 16,
                        child: Text(
                          goal.subtitle,
                          textAlign: TextAlign.left,

                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff949E9F),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: 200,
                          height: 32,
                          child: Row(
                            children: [

                              Container(

                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(width: 1.0, color: const Color(0xFF33BC0A)),
                                  color: Color(0xFfF2FFED),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: SizedBox(
                                        //height: 16,
                                        //width: 12,

                                        child: Icon(
                                          Icons.access_time_rounded,
                                          color: Color(0xff33BC0A),
                                          size: 20.0,
                                        ),


                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: SizedBox(
                                        height: 16,
                                        width: 75,

                                        child: Text(
                                          '${goal.durationseconds} min',
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff33BC0A),
                                          ),
                                        ),

                                      ),
                                    ),
                                  ],
                                ),


                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Container(

                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(width: 1.0, color: const Color(0xFFFFB605)),
                                    color: Color(0xFfFFFAEE),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: SizedBox(
                                          //height: 16,
                                          //width: 12,

                                          child: Icon(
                                            Icons.local_fire_department_outlined,
                                            color: Color(0xffFFB605),
                                            size: 20.0,
                                          ),


                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: SizedBox(
                                          height: 16,
                                          width: 55,

                                          child: Text(
                                            '${goal.caloriescount} cal',
                                            style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffFFB605),
                                            ),
                                          ),

                                        ),
                                      ),
                                    ],
                                  ),


                                ),
                              ),


                            ],
                          ),
                        ),
                      ),




                    ],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(255, 120, 24, 0),
              child: SizedBox(
                width: 40,
                height: 40,

                child: CircleAvatar(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.play_arrow,
                        color: Color(0xffF8753D),
                        //size: 40.0,
                      ),
                    ),
                    radius: 24,
                    backgroundColor: const Color(0xffEFEFEF)),

              ),
            ),
          ],
        ),
      ),
    );

  }
}
