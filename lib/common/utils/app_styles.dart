import 'package:flutter/material.dart';


class AppTheme{
  static ThemeData appThemeData = ThemeData(
    useMaterial3: true,

    //appBar settings
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white
    ),

    //Scaffold settings
    scaffoldBackgroundColor: Colors.white

  );
}


/* --------- can be added ---------
* fontFamily: ''
*
* */


/* --------- Notes ---------
* every time we change data we must make hot restart.
*
*/