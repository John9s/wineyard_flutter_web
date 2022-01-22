import 'package:ant_icons/ant_icons.dart';
import 'package:winestore_flutter_web/featured.dart';
import 'package:winestore_flutter_web/widgets/custom_text.dart';
import 'package:winestore_flutter_web/widgets/header_div.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSelling extends StatefulWidget {
  BestSelling({Key? key}) : super(key: key);

  @override
  _BestSellingState createState() => _BestSellingState();
}

class _BestSellingState extends State<BestSelling> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      margin: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 0.0),
      child: Column(

        children: [
          headerDiv("Top Rated", smallScreenGrid),

          Ctext("Take a look at our top rated wines", size: smallScreenGrid ? 12.0 : 11.0),

          CupertinoButton(
              onPressed: (){},
              child: Ctext("SEE MORE", weight: FontWeight.bold, color: Colors.indigo[600], size: smallScreenGrid ? 12 : 11)),

          GridView.count(
            crossAxisCount: smallScreenGrid ? 4 : 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: 30.0,
            crossAxisSpacing: 30.0,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              buildWineDetail("wine13.jpg", "Flowers Camp Meeting Ridge Sonoma", 5, "89.99", smallScreenGrid, context),
              buildWineDetail("wine9.jpg", "Alexana Revana Vineyard Dundee Hills", 5, "54.99", smallScreenGrid, context),
              buildWineDetail("wine11.jpg", "Carnivor California Zinfadel", 5, "17.98", smallScreenGrid, context),
              buildWineDetail("wine10.jpg", "Louis Latour Grand Ardeche Chardonnay 2018", 5, "15.98", smallScreenGrid, context),
            ],
          ),
        ],
      ),
    );
  }
}
