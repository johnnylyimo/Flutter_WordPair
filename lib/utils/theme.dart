import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData basicTheme() {
//  TextTheme affect all text, heading, title, body, caption
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      // copyWith override, copyWith has all attibute title, headline,
      headline: base.headline.copyWith(
        fontFamily: '',
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      title: base.title.copyWith(
        fontFamily: '',
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
//      body1 affect all body text on scaffold automatically
      body1: base.body1.copyWith(
        fontFamily: '',
        color: Colors.black,
      ),
    );
  }

  final TextTheme textTheme = TextTheme(
    display1: GoogleFonts.raleway(
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    ),
  );

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.deepPurple.shade300,
    scaffoldBackgroundColor: Colors.indigo.shade100,
    accentColor: Colors.deepPurple.shade400,
    buttonColor: Colors.red.shade400,
    backgroundColor: Colors.red.shade500,

//   iconTheme affect all icon automatically
    iconTheme: IconThemeData(
      color: Colors.yellow,
      size: 18.0,
    ),
  );
}
