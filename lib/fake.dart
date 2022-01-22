import 'package:winestore_flutter_web/widgets/header_div.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class FakeDiscover extends StatefulWidget {
  const FakeDiscover({Key? key}) : super(key: key);

  @override
  _FakeDiscoverState createState() => _FakeDiscoverState();
}

class _FakeDiscoverState extends State<FakeDiscover> {

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
        //height: smallScreenGrid ? 300.0 : 300.0,
        margin: EdgeInsets.only(
        left: largeScreenGrid
        ? 100.0
        : smallScreenGrid
    ? 40.0
        : tabScreenGrid
    ? 10.0
        : 10.0,
    top: smallScreenGrid ? 30.0 : 15.0,
        right: largeScreenGrid
        ? 100.0
            : smallScreenGrid
        ? 40.0
            : tabScreenGrid
        ? 10.0
        : 10.0,
        bottom: 0.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [

    headerDiv("Discover", smallScreenGrid),

    Ctext("The Collection", size: smallScreenGrid ? 12.0 : 11.0),

    CupertinoButton(
    padding: EdgeInsetsDirectional.zero,
    onPressed: (){},
    child: Ctext("MORE WINES", weight: FontWeight.bold, color: Colors.indigo[600], size: smallScreenGrid ? 12 : 11)),

    SizedBox(height: smallScreenGrid? 20.0 : 0.0),

    Row(
    children: [
    Expanded(child: buildDiscoverItem("vintage", "GRAND VINTAGE", "Moet & Chandon Grand vintage 1993", smallScreenGrid)),

    Expanded(child: buildDiscoverItem("rose", "CHANDON", "Moet & Chandon Rose Imperial", smallScreenGrid)),


    Expanded(child: buildDiscoverItem("imperial", "IMPERIAL", "Moet & Chandon Imperial", smallScreenGrid))
    ],
    )

   ],


    ),
    );
  }


  Widget buildDiscoverItem(String uri, title, subtitle,  bool smallScreenGrid){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: smallScreenGrid ? 300 : 100,
              width: smallScreenGrid ? 400 : 300,
              child: Image.asset("assets/$uri.png", fit: BoxFit.fill)), //Image.network(uri),

          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Ctext(title, maxLines: 1),
          ),

          Ctext(subtitle, align: TextAlign.center)
        ],
      ),
    );
  }

  buildDiscoverRow(bool smallScreenGrid){
    return Row(
      children: [
        buildDiscoverItem("vintage", "GRAND VINTAGE", "Moet & Chandon Grand vintage 1993", smallScreenGrid),

        buildDiscoverItem("rose", "CHANDON", "Moet & Chandon Rose Imperial", smallScreenGrid),


        buildDiscoverItem("imperial", "IMPERIAL", "Moet & Chandon Imperial", smallScreenGrid)
      ],
    );
  }
}
