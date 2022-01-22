import 'package:winestore_flutter_web/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MidImages extends StatefulWidget {
  MidImages({Key? key}) : super(key: key);

  @override
  _MidImagesState createState() => _MidImagesState();
}

class _MidImagesState extends State<MidImages> {
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
          bottom: 20.0),
      child: Row(
        children: [
          Expanded(
            child:
                Stack(

          children: [
        Image.asset(
        'assets/Vintage-Wine.jpeg',
        fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

      ),

            RaisedButton(onPressed: (){},
              color: Colors.transparent,
              child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.transparent,
            ), hoverColor: Colors.white.withOpacity(0.2),),

            Positioned.fill(
              left: 20.0,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Ctext("Visit our ", color: Color.fromRGBO(229, 184, 11, 1), weight: FontWeight.bold, size: smallScreenGrid ? 35.0 : 20.0),
                              Ctext("Vineyard", color:  Color.fromRGBO(229, 184, 11, 1), weight: FontWeight.bold, size: smallScreenGrid ? 35.0 : 20.0),
                            ],
                          )),
                      Text("The vineyard welcomes you", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: smallScreenGrid ? 14.0 : 12.0)),
                      Text("and your friends for daily visits", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: smallScreenGrid ? 14.0 : 12.0)),
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
