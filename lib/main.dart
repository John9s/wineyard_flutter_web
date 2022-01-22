// @dart=2.9
import 'package:flutter/material.dart';
import 'package:winestore_flutter_web/homePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web - The Wineyard',
      theme: ThemeData(
        //brightness: Brightness.dark,
        //canvasColor: Colors.black,
        primaryTextTheme: GoogleFonts.lailaTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
