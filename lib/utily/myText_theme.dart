import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mycolors.dart';

class MyTextThemes {
  static TextStyle textHeading = GoogleFonts.cabin(
    fontSize: 20,
    color: MyColors.basicColor,
    fontWeight: FontWeight.bold,

  );
  static TextStyle bodyTextstyle = GoogleFonts.cabin(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.bold,

  );
  static TextStyle bodyTextstyle1 = GoogleFonts.cabin(
    fontSize: 10,
    color: MyColors.textwhite,
    fontWeight: FontWeight.normal,
  );


  static TextStyle bodyTextStyle2 = TextStyle(
      fontSize: 20,
      color: MyColors.textwhite,
      fontStyle: FontStyle.italic);


  static TextStyle buttonTextStyle = GoogleFonts.cabin(
      fontSize: 20,
      color: MyColors.textwhite,
      fontStyle: FontStyle.italic);
}
