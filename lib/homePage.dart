import 'package:winestore_flutter_web/models/wine_model.dart';
import 'package:winestore_flutter_web/pages/discover.dart';
import 'package:winestore_flutter_web/top_image.dart';
import 'package:winestore_flutter_web/widgets/custom_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winestore_flutter_web/bestSelling.dart';
import 'package:winestore_flutter_web/bottom_bar.dart';
import 'package:winestore_flutter_web/midImages.dart';
import 'package:winestore_flutter_web/featured.dart';

import 'package:winestore_flutter_web/topBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  final String? screen;
  final Wine? wine;

  HomePage({this.screen, this.wine, Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

String companyName = "The Wineyard";

//var display = wid"home";
class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreenGrid = currentWidth > 1201;
    var largeScreenGrid = currentWidth > 1366;


    final homePage = Column(
      children: [
        Stack(
            alignment: Alignment.topLeft,
            children: [

              landingImage(smallScreenGrid, largeScreenGrid),
            TopBar(Colors.white)
          ]),

        TopImages(),

        Discover(), //Discover(),//SlideImages(),
        //Products(),
        Featured(),

        MidImages(),

        BestSelling(),
        SizedBox(height: 100.0),
      ],
    );


    return Scaffold(
      body: SafeArea(
       top: false,
        child: Container(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [

                homePage,

                SizedBox(height:  smallScreenGrid ? 50 : 20,),

                BottomBar()

                //ProductDetail("wine13.jpg", "name", "20")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget landingImage(bool smallScreenGrid, bool largeScreenGrid) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
        height: smallScreenGrid ? MediaQuery.of(context).size.height : 300,
        width: double.infinity,
        child: Image.asset(
          "assets/landing.png",
          fit: BoxFit.fill,
        ),
      ),

        Container(
          margin: EdgeInsets.only(left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
              ? 40.0
              : 20.0
    ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ctext("CHOOSE BETWEEN", color: Colors.white, weight: FontWeight.bold, size: smallScreenGrid ? 60 : 18.0),
              Row(
                children: [
                  Ctext("The Best ", color: Colors.white, size: smallScreenGrid ? 50 : 18.0),
                  Ctext("Wines ", color: Color.fromRGBO(229, 184, 11, 1), size: smallScreenGrid ? 50 : 18.0),
                  Ctext("Today ", color: Colors.white, size: smallScreenGrid ? 50 : 18.0),
                ],
              ),

              SizedBox(height:  smallScreenGrid ? 50 : 0) ,
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text("Shop Now", style: GoogleFonts.rougeScript(color: Color.fromRGBO(229, 184, 11, 1), fontSize: smallScreenGrid ? 100 : 30.0)),
              ),
            ],
          ),
        )
      ]
    );
  }
}
