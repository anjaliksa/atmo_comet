

import 'package:atmo_comet/view/Packagedeilvered/package_delivered.dart';
import 'package:atmo_comet/view/Register/register.dart';
import 'package:atmo_comet/view/Signin/Signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Helper/RouteHelper.dart';
import 'view/pic_and_drop/pic_drop_address.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var baseTheme = ThemeData(
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontSize: 18,
          ),
          headline3: TextStyle(
            fontSize: 20,
          ),
          headline4:  TextStyle(
            fontSize: 14,
          ),
          headline5: TextStyle(
            fontSize: 13,
          ),
          headline6: TextStyle(
            fontSize: 16,
          ),
          headlineLarge: TextStyle(
            fontSize: 25,
          ),
          bodyText1: TextStyle(
            fontSize: 13,
          ),
          bodyText2: TextStyle(
            fontSize: 10,
          ),
        )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutHelper().addressRoute ,
      routes: {
        RoutHelper().initialRoute: (context) =>  DeliveredPage(),
        RoutHelper().introRoute: (context) => RegisterPage(),
        RoutHelper().signinRoute: (context) => SigninPage(),
        RoutHelper().deliveredRoute: (context) => DeliveredPage(),
        RoutHelper().addressRoute: (context) => PicAndDrop(),


        },
      theme: ThemeData(
          checkboxTheme:CheckboxThemeData(
            side: BorderSide(
            ),
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            fillColor: MaterialStateProperty.all(Color(0xFF2269A3)),
            checkColor: MaterialStateProperty.all(Color(0xFF2269A3)),
            overlayColor: MaterialStateProperty.all(Color(0xFF2269A3)),
          ) ,
          primaryColor:const Color(0xFF7484EC),
          secondaryHeaderColor:const Color(0xFFC563B9),
          textTheme:GoogleFonts.poppinsTextTheme(baseTheme.textTheme)
      ),
    );
  }

}