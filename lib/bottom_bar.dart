import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'homePage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  String title1 = "ORDERS";
  String title2 = "OUR SHOP";
  String title3 = "INFORMATION";

  List<String> list1 = ["My Account", "Order tracking", "Watch list", "Customer Service", "Returns", "FAQ"];
  List<String> list2 = ["Product Support", "Accessories", "Services", "Extended Services", "Community", "Product Manuals"];
  List<String> list3 = ["Specials", "New products", "Best sellers", "Our stores", "About us", "Gift Certificate"];

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;
    
    return Container(
      //height: smallScreenGrid ? 300.0 : null,
      padding: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
              ? 40.0
              : tabScreenGrid
              ? 10.0
              : 10.0,
          top: 50.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
              ? 40.0
              : tabScreenGrid
              ? 10.0
              : 10.0,
          bottom: 0.0),
      color: Colors.black12.withOpacity(0.05),
      
      child: smallScreenGrid ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAboutGrid(smallScreenGrid),

          buildRowGrid(title1, list1),

          buildRowGrid(title2, list2),

          buildRowGrid(title3, list3),

          buildContactGrid(smallScreenGrid),
        ],
      ) : bottomBarColumn(smallScreenGrid)
    );
  }

  Widget buildRowGrid(String title, List<String> items){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

          SizedBox(height: 10,),
          Text(items[0]),
          SizedBox(height: 10,),
          Text(items[1]),
          SizedBox(height: 10,),
          Text(items[2]),
          SizedBox(height: 10,),
          Text(items[3]),
          SizedBox(height: 10,),
          Text(items[4]),
          SizedBox(height: 10,),
          Text(items[5]),
        ],
      ),
    );
  }

  Widget buildColumnGrid(String title, List<String> items){
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),

      SizedBox(height: 10,),
      Text(items[0]),
          SizedBox(height: 10,),
      Text(items[1]),
          SizedBox(height: 10,),
      Text(items[2]),
          SizedBox(height: 10,),
      Text(items[3]),
          SizedBox(height: 10,),
      Text(items[4]),
          SizedBox(height: 10,),
      Text(items[5]),

        ],
      ),
    );
  }


  buildAboutGrid(bool smallScreenGrid) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: smallScreenGrid ? CrossAxisAlignment.start : CrossAxisAlignment.center,
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("About", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

          SizedBox(height: 10.0,),

          SizedBox(
            width: 300.0,
            child: Text("Here at $companyName, We provide the best wine with a wide variety of quality wine so there is something for everyone."
                "\n\nEstablished in 1985, we have grown to become the best winery in the world with "
                "vintage collection dating back to the 18th century and beyond\n\nWe aim to provide with an unforgettable experience. ", textAlign: smallScreenGrid ? TextAlign.justify : TextAlign.center,),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset("assets/payment.png",height: 40.0),
          )
        ],
      ),
    );
  }

  Widget buildContactGrid(bool smallScreenGrid){
    return Container(
      child: Column(
        crossAxisAlignment: smallScreenGrid ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("CONTACT US", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: smallScreenGrid ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.location_solid, size: 20.0,),
              SizedBox(width: 15.0,),
              Text("No 29. Bishop Street, Jimeta")
            ],
          ),

          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: smallScreenGrid ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.phone_solid, size: 20.0,),

              SizedBox(width: 15.0,),

              Text("No 29. Bishop Street, Jimeta")
            ],
          ),

          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: smallScreenGrid ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Icon(CupertinoIcons.mail_solid, size: 20.0,),
              SizedBox(width: 15.0,),
              Text("$companyName@gmail.com")
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 15.0, bottom: 20),
            child: Row(
              mainAxisAlignment: smallScreenGrid ? MainAxisAlignment.start : MainAxisAlignment.center,

              children: [
                Icon(AntIcons.facebook, color: Colors.indigo, size: 20.0),
                SizedBox(width: 10.0,),
                Icon(AntIcons.twitter_outline,
                    color: Colors.blue, size: 20.0),
                SizedBox(width: 10.0,),
                Icon(AntIcons.linkedin, color: Colors.indigo, size: 20.0),
                SizedBox(width: 10.0,),
                Icon(AntIcons.youtube, color: Colors.red, size: 20.0),
                SizedBox(width: 10.0,),
                Icon(AntIcons.instagram,
                    color: Colors.purple[300], size: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bottomBarColumn(bool smallScreenGrid){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: smallScreenGrid ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        buildAboutGrid(smallScreenGrid),

        buildColumnGrid(title1, list1),

        buildColumnGrid(title2, list2),

        buildColumnGrid(title3, list3),

        SizedBox(height: 10.0,),

        buildContactGrid(smallScreenGrid),
      ],
    );
  }


}
