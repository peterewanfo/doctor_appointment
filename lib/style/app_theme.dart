import 'package:doctor_appointment/style/custom_colors.dart';
import 'package:doctor_appointment/style/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme:AppBarTheme(
      color: Colors.white,
      elevation: 1,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      actionsIconTheme: IconThemeData(
        color: CustomColors.selectedButtonColor
      ),
      textTheme: TextTheme(
        headline6: GoogleFonts.josefinSans(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        )
      )
    ),
    toggleableActiveColor: CustomColors.selectedButtonColor,
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: CustomStyle.kTextStyleButton,
      subtitle1: CustomStyle.kTextStyleSubtitle1,
      subtitle2: CustomStyle.kTextStyleSubtitle2,
      bodyText1: CustomStyle.kTextStyleBody1,
      bodyText2: CustomStyle.kTextStyleBody2,
      headline1: CustomStyle.kTextStyleHeadline1,
      headline2: CustomStyle.kTextStyleHeadline2,
      headline3: CustomStyle.kTextStyleHeadline3
    ),
    iconTheme: IconThemeData(
      color: CustomColors.selectedButtonColor
    ),
    fontFamily: 'JosefinSans',
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme:AppBarTheme(
      color: Colors.white,
      elevation: 1,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      actionsIconTheme: IconThemeData(
        color: CustomColors.selectedButtonColor
      ),
      textTheme: TextTheme(
        headline6: GoogleFonts.josefinSans(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        )
      )
    ),
    toggleableActiveColor: CustomColors.selectedButtonColor,
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      button: CustomStyle.kTextStyleButton,
      subtitle1: CustomStyle.kTextStyleSubtitle1,
      subtitle2: CustomStyle.kTextStyleSubtitle1,
      bodyText1: CustomStyle.kTextStyleBody1,
      bodyText2: CustomStyle.kTextStyleBody2,
      headline1: CustomStyle.kTextStyleHeadline1,
      headline2: CustomStyle.kTextStyleHeadline2,
      headline3: CustomStyle.kTextStyleHeadline3,
      headline4: CustomStyle.kTextStyleHeadline4
    ),
    iconTheme: IconThemeData(
      color: CustomColors.selectedButtonColor
    ),
    fontFamily: 'JosefinSans',
  );

}