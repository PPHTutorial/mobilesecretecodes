
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/Google_fonts.dart';

void TrasparentStatusBar(Brightness tb, Color tc, Brightness bb, Color bc) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: bc,
      systemNavigationBarIconBrightness: bb,
      statusBarColor: tc,
      statusBarIconBrightness: tb));
}


const primary = Color(0xFF350968);
const transparent = Colors.transparent;
const white = Colors.white;
const black = Colors.black;
const gray = Color(0xFFE7E7E7);



final TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.openSans(
      fontSize: 97, fontWeight: FontWeight.w600, letterSpacing: -1.5),
  displayMedium: GoogleFonts.openSans(
      fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall: GoogleFonts.openSans(fontSize: 48, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.openSans(
      fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall: GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.openSans(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.openSans(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.openSans(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.openSans(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

final theme = ThemeData(
          primaryColor: Colors.white,
          dividerColor: Colors.white12,
          textTheme: textTheme,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Color(0xFFF0F0F0),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
              .copyWith(
                  background: const Color(0xFFE5E5E5),
                  brightness: Brightness.light,
                  secondary: Color(0xFFF0F0F0)),
          appBarTheme: AppBarTheme(
              color: primary,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              elevation: 0,
              iconTheme: IconThemeData(color: white),
              toolbarTextStyle:
                  TextTheme(bodyLarge: TextStyle(color: gray)).bodyLarge,
              titleTextStyle:
                  TextTheme(titleLarge: TextStyle(color: gray)).titleLarge),
        );