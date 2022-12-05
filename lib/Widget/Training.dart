import 'package:flutter/material.dart';

import '../Models/daily_exercices.dart';


class Exercise extends StatelessWidget {

  const Exercise({super.key, required this.dail});
  final Daily dail;



  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: SizedBox(
                height: 48,
                width: 358,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 48,
                      width: 48,
                      child:  DecoratedBox(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8),
                          ),
                          image:  DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(dail.cover),
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),

                    Column(
                         // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: 60),
                              child: SizedBox(
                                height: 24,
                                width: 96,

                                  child: Text(
                                    dail.title,
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff00132C),
                                    ),
                                    textAlign: TextAlign.left ,
                                  ),

                              ),
                            ),

                            Padding(
                              padding:  EdgeInsets.only(top: 2),
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
                                         padding: const EdgeInsets.only(left: 6),
                                         child: SizedBox(
                                           height: 16,
                                          width: 48,

                                          child: Text(
                                            '${dail.durationseconds} min',
                                            style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff33BC0A),
                                            ),
                                          ),

                                    ),
                                       ),


                                  Padding(
                                    padding: const EdgeInsets.only(left: 19),
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
                                    padding: const EdgeInsets.only(left: 6),
                                    child: SizedBox(
                                      height: 16,
                                      width: 47,

                                      child: Text(
                                        '${dail.caloriescount} cal',
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

                          ],
                        ),


                       SizedBox(

                        width: 32,
                       height: 32,
                        child: CircleAvatar(

                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xffF8753D),
                               // size: 32.0,
                              ),

                            radius: 24,
                            backgroundColor: const Color(0xffEFEFEF)),

                      ),

                  ],
                ),

              ),
    );



  }
}
