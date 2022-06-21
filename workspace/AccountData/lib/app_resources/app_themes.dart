import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'app_colors.dart';

class AppTheme {
  ///colors for light mode
  static final lightTheme = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: AppColors.PRIMARY_COLOR,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: AppColors.SECONDARY_COLOR
    ),



    // hintColor: AppColors.PRIMARY_COLOR,
    appBarTheme: AppBarTheme(
      elevation: 0,

      backgroundColor: AppColors.PRIMARY_COLOR,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColors.SECONDARY_COLOR),


    ),
    buttonColor: AppColors.PRIMARY_COLOR,

    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      buttonColor:  AppColors.SECONDARY_COLOR,
    ),

    textTheme: textTheme,



  );




  static TextTheme get textTheme {
    return TextTheme(

      caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.TEXTCOLORGREY,
      ),
      subtitle1: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
      subtitle2: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodyText1: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),


      headline6: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),

      headline5: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.WHITE_COLOR

      ),
      headline4: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
      headline3: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
      headline2: GoogleFonts.poppins(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        color: Colors.grey,
      ),
      headline1: GoogleFonts.poppins(
        fontSize: 40,
        fontWeight: FontWeight.w500,
        color: Colors.grey[800],
      ),
    );
  }
}