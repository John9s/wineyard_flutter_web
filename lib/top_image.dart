import 'package:winestore_flutter_web/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopImages extends StatefulWidget {
  TopImages({Key? key}) : super(key: key);

  @override
  _MidImagesState createState() => _MidImagesState();
}

class _MidImagesState extends State<TopImages> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      height: smallScreenGrid ? 300.0 : 180.0,
      margin: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
              ? 40.0
              : tabScreenGrid
              ? 10.0
              : 10.0,
          top: 20.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
              ? 40.0
              : tabScreenGrid
              ? 10.0
              : 10.0,
          //bottom: 20.0
      ),
      child: Row(
        children: [
          Expanded(
              child:
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    'assets/barrels.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,

                  ),

                  RaisedButton(onPressed: (){},
                    color: Colors.black.withOpacity(0.2),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.transparent,
                    ), hoverColor: Colors.white.withOpacity(0.2),),

                  Positioned.fill(
                    left: smallScreenGrid ? 20.0 : 10.0,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Ctext("SALE ", color: Colors.white, weight: FontWeight.bold, size: smallScreenGrid ? 30.0 : 15.0),
                            Ctext("50% ", color: Color.fromRGBO(229, 184, 11, 1), weight: FontWeight.bold, size: smallScreenGrid ? 30.0 : 15.0),
                            Ctext("OFF", color: Colors.white, weight: FontWeight.bold, size: smallScreenGrid ? 30.0 : 15.0),
                          ],
                        ) ),
                  ),
                ],
              )


          ),

          SizedBox(width: 10,),

          Expanded(
              child:
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    'assets/val3.png',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,

                  ),
                  RaisedButton(onPressed: (){},
                    color: Colors.black.withOpacity(0.2),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.transparent,
                    ), hoverColor: Colors.white.withOpacity(0.2),),

                  Positioned.fill(
                    left: smallScreenGrid ? 20.0 : 10.0,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Ctext("IT'S THE SEASON ", color: Colors.white, weight: FontWeight.bold, size: smallScreenGrid ? 30.0 : 15.0),
                            Row(
                              children: [
                                Ctext("OF ", color:  Colors.white, weight: FontWeight.bold, size: smallScreenGrid ? 30.0 : 15.0),
                                Ctext("LOVE", color:  Colors.red, weight: FontWeight.bold, size: smallScreenGrid ? 30.0 : 15.0),
                              ],
                            ),

                            Row(
                              children: [
                                Text("Get our ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: smallScreenGrid ? 15.0 : 10.0)),
                                Text("valentine ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: smallScreenGrid ? 15.0 : 10.0)),
                                Text("specials!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: smallScreenGrid ? 15.0 : 10.0)),
                             ],
                            ),

                          ],
                        ) ),
                  ),



                ],
              )


          ),

        ],
      ),
    );
  }
}
