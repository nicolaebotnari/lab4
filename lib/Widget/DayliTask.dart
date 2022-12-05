
import 'package:flutter/material.dart';
class DayliTask extends StatelessWidget {
  const DayliTask({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(

              width: 333,
              //height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [

                          Text(
                            'Daily Task',
                           // textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              color: Color(0xff00132C),
                            ),
                          ),
                         Text(
                          'See all',
                          //textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Color(0xff198FB3),
                          ),
                      ),


                ],
              ),







    ),
      );


  }
}
