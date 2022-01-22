import 'package:ant_icons/ant_icons.dart';
import 'package:winestore_flutter_web/homePage.dart';
import 'package:winestore_flutter_web/pages/product_detail.dart';
import 'package:winestore_flutter_web/widgets/custom_text.dart';
import 'package:winestore_flutter_web/widgets/header_div.dart';
import 'package:winestore_flutter_web/widgets/palette.dart';
import 'package:winestore_flutter_web/widgets/rating.dart';
import 'package:winestore_flutter_web/widgets/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/wine_model.dart';

class Featured extends StatefulWidget {
  Featured({Key? key}) : super(key: key);

  @override
  _FeaturedState createState() => _FeaturedState();
}

buildWineDetail(String uri, String name, int rating, String price, bool smallScreenGrid, BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(Wine(uri, name, price))));

    },
    child: Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset("assets/bottles/$uri", fit: BoxFit.fill),
            /*Image.network(
                uri,
                fit: BoxFit.cover,
              ),*/
          ),

          Divider(color: Colors.grey, height: 1.0,),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                name, style: TextStyle(fontSize: smallScreenGrid ? 17.0 : 15.0), textAlign: TextAlign.center, maxLines: 1
            ),
          ),

          SizedBox(height: 5,),
          Container(
            child: Rating(initialRating: rating, size: 14, color: Palette.primaryColor,),
          ),

          SizedBox(height: 5,),

          Container(
            // alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
            child: Text(
              "\$$price",
              style: TextStyle(
                color: Palette.primaryColor,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
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
                      : 10.0,//    top: smallScreenGrid ? 100.0 : 50.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: smallScreenGrid ? 100.0 : 50.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          headerDiv("Featured", smallScreenGrid),


          Ctext("This week featured", size: smallScreenGrid ? 12.0 : 11.0),

          SizedBox(height: 20.0),

          GridView.count(
            crossAxisCount: /*extraLargeScreenGrid
                ? 5
                :*/ largeScreenGrid
                    ? 4
                    : smallScreenGrid
                        ? 3
                        : tabScreenGrid
                            ? 2
                            : 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
            crossAxisSpacing: smallScreenGrid ? 20.0 : 10.0,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [

              buildWineDetail("wine2.jpg", "Rubis Chocolate Velvet Wine 50 cl", 5, "30.22", smallScreenGrid, context),
              buildWineDetail("wine3.jpg", "Baron Romero Spanish Red Wine 75 cl", 4, "25.68", smallScreenGrid, context),
              buildWineDetail("wine13.jpg", "Flowers Camp Meeting Ridge Sonoma", 4, "15.89", smallScreenGrid, context),
              buildWineDetail("wine9.jpg", "Alexana Revena Vineyard Dundee Hills Pinot Noir 2018", 5, "54.99", smallScreenGrid, context),
              ],
          ),
        ],
      ),
    );


  }


}
