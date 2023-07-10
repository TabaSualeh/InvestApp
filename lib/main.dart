import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Txtwhite,
          ),
          scaffoldBackgroundColor: Txtwhite,
          buttonColor: Color(0xff31A062),

          textTheme: TextTheme(
            // Heading 1
            displayLarge: GoogleFonts.dmSans(
                fontSize: 28, fontWeight: FontWeight.w700, color: HTxtblack),
            //Heading 2
            displayMedium: GoogleFonts.dmSans(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                height: 28,
                color: HTxtblack,
                letterSpacing: 0.8),
            //Subtitles
            bodyLarge: GoogleFonts.montserrat(
                fontSize: 15, fontWeight: FontWeight.w500, color: Txtgrey),
            //BUtton text
            labelLarge: GoogleFonts.montserrat(
                fontSize: 15, fontWeight: FontWeight.w600, color: Txtwhite),
            //Text BUtton
            labelMedium: GoogleFonts.montserrat(
                fontSize: 17, fontWeight: FontWeight.w600, color: Btngreen62),
            //Hint Text
            labelSmall: GoogleFonts.montserrat(
                fontSize: 17, fontWeight: FontWeight.w400, color: HintTxtgrey),
          )),
      home: SplashScreen(),
    );
  }
}
