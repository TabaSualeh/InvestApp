import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:investapp/constants/colors.dart';
import 'package:investapp/screens/createaccount.dart';
import 'package:investapp/screens/homepage.dart';
import 'package:investapp/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleTextStyle: GoogleFonts.alegreyaSans(
                fontSize: 17, fontWeight: FontWeight.w600, color: HTxtblack),
            backgroundColor: Txtwhite,
            elevation: 0,
            iconTheme: IconThemeData(color: HTxtblack),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextTheme().labelSmall,
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: HintTxtgrey, width: 2.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: HintTxtgrey.withOpacity(0.50))),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                primary: Txtwhite, minimumSize: Size(354, 20)),
          ),
          scaffoldBackgroundColor: Txtwhite,
          buttonColor: const Color(0xff31A062),
          textTheme: TextTheme(
            // Heading 1
            displayLarge: GoogleFonts.dmSans(
                fontSize: 28, fontWeight: FontWeight.w700, color: HTxtblack),
            //Heading 2 Best Plans
            displayMedium: GoogleFonts.dmSans(
                fontSize: 22,
                fontWeight: FontWeight.w700,
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
                fontSize: 15, fontWeight: FontWeight.w600, color: Btngreen62),
            //Hint Text
            labelSmall: GoogleFonts.montserrat(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: HintTxtgrey.withOpacity(0.8),
            ),
            // Read text See all
            displaySmall: GoogleFonts.roboto(
                fontSize: 18,
                color: Txtred,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.8),
            //List Bar heading
            bodyMedium: GoogleFonts.dmSans(
                fontSize: 18, fontWeight: FontWeight.w700, color: Txtgrey),
            bodySmall: GoogleFonts.roboto(
                fontSize: 14, fontWeight: FontWeight.w400, color: TxtLgrey),
          )),
      home: SplashScreen(),
    );
  }
}
