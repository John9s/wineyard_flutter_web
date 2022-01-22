import 'package:ant_icons/ant_icons.dart';
import 'package:winestore_flutter_web/pages/product_detail.dart';
import 'package:winestore_flutter_web/widgets/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottom_bar.dart';
import '../featured.dart';
import '../topBar.dart';
import 'custom_text.dart';

class Shop extends StatefulWidget {
  final String? screen;
  final String? image;
  final String? product;
  final String? price;
  const Shop({this.screen, this.image, this.product, this.price, Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            TopBar(Colors.black),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: EdgeInsets.only(
                    left: largeScreenGrid
                        ? 100.0
                        : smallScreenGrid
                        ? 40.0
                        : tabScreenGrid
                        ? 10.0
                        : 10.0,
                    // top: smallScreenGrid ? 50.0 : 0.0,
                    right: largeScreenGrid
                        ? 100.0
                        : smallScreenGrid
                        ? 40.0
                        : tabScreenGrid
                        ? 10.0
                        : 10.0,
                    bottom: 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    smallScreenGrid ?  Row(
                      children: [
                        Column(
                          children: [
                            buildSideBar(),

                            SizedBox(height: 40,),

                            buildSortBar()
                          ],
                        ),

                        SizedBox(width: 50.0),
                      ],
                    )
                        : Container(),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          smallScreenGrid ? filterMenu() : Container(
                            height: 40.0,
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    //Icon(AntIcons.table, color: Palette.primaryColor,),
                                    SizedBox(width: 20.0),
                                    Icon(AntIcons.unordered_list),
                                  ],
                                ),

                                SizedBox(width: 20.0),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 30.0),
                                  height: 30,
                                  width: 1.0,
                                  decoration: BoxDecoration(color: Colors.grey),
                                ),
                                SizedBox(width: 20.0),

                                GestureDetector(child: Row(
                                  children: [
                                    Icon(AntIcons.filter),
                                    Text(" Filter")
                                  ],
                                ))
                              ],
                            ),

                          ),

                          SizedBox(height: 10.0,),
                          Divider(color: Colors.grey, height: 2.0),
                          products(smallScreenGrid)
                          //widget.screen == null ?  : ProductDetail(widget.image!, widget.product!, widget.price!)
                        ],
                      ),
                    )
                  ],
                ),
              ),


            ),
            SizedBox(height:  smallScreenGrid ? 50 : 20,),
            BottomBar()
          ],
        ),
      )),
    );
  }

  Widget buildSideBar(){
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(color: Colors.grey)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            color: Palette.primaryColor,
            padding: EdgeInsets.only(left: 16),
            height: 100.0,
            child: Ctext("CATEGORIES", weight: FontWeight.bold, size: 16, color: Colors.white),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Column(
                children: [

                  buildItem("AMARULA CARAMEL", addIcon: true),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("BALATINESS", addIcon: true),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("CHIVAS"),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("CHAMPAGNE-SPARKLING"),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("DESSERT WINE"),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("RED WINE", addIcon: true),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("ROSE"),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("WHITE WINE", addIcon: true),

                  Divider(thickness: 0.4, color: Colors.grey),

                  buildItem("MYSTERY CASES"),

                  Divider(thickness: 0.4, color: Colors.grey),






                ]),
          ),
        ],
      ),
    );
  }

  Widget buildSortBar(){
    return Container(
      width: 250.0,
      decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(color: Colors.grey)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            color: Palette.primaryColor,
            padding: EdgeInsets.only(left: 16),
            height: 100.0,
            child: Ctext("FILTER BY", weight: FontWeight.bold, size: 16, color: Colors.white),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Ctext("AVAILABILITY", weight: FontWeight.bold, color: Colors.white),
                  Divider(thickness: 0.4, color: Colors.grey),
                  SizedBox(height: 10,),
                  buildCheckBox("In Stock 6", true),


                  SizedBox(height: 20,),
                  Ctext("BRANDS", weight: FontWeight.bold, color: Colors.white),
                  Divider(thickness: 0.4, color: Colors.grey),

                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCheckBox("Absolut 3", true),
                          SizedBox(height: 10,),
                          buildCheckBox("Chandon 3", false),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCheckBox("Martell 3", false),
                          SizedBox(height: 10,),
                          buildCheckBox("Remy Martin 3", false),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Ctext("PRICE", weight: FontWeight.bold, color: Colors.white),

                  Divider(thickness: 0.4, color: Colors.grey),


                  SizedBox(height: 10,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 30,
                            padding: EdgeInsets.all(10),
                            color: Colors.white,
                            child: TextFormField(
                              maxLines: 1,
                              initialValue: "20",
                              decoration: InputDecoration.collapsed(hintText: ""),
                              textAlign: TextAlign.center,
                            ),
                          ),

                          SizedBox(height: 10,),

                          Ctext("min. price", color: Colors.grey, size: 11.0)
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 30,
                            padding: EdgeInsets.all(10),
                            color: Colors.white,

                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration.collapsed(hintText: ""),
                                maxLines: 1,
                                initialValue: "40",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),
                          Ctext("max. price", color: Colors.grey, size: 11.0)
                        ],
                      )
                    ],
                  ),

                  SizedBox(height: 20,),

                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey, width: 1.0)
                    ),
                    child: RaisedButton(
                      padding: EdgeInsets.zero,
                      hoverColor: Colors.black.withOpacity(0.3),
                      splashColor: Colors.white.withOpacity(0.3) ,
                      color: Colors.transparent,
                      onPressed: (){},
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),

                          child: Text("FILTER", style: TextStyle(color: Colors.white),)
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Center(child: Ctext("Price: \$20 - \$40", size: 11.0, color: Colors.grey))

                ]),
          ),
        ],
      ),
    );

  }

  buildItem(String text, {bool addIcon = false}){
    return InkWell(
      onTap: (){},
      child: Container(
        height: 30.0,
        //padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Ctext(text, color: Colors.white),
            addIcon ? GestureDetector(onTap: (){},child: Icon(CupertinoIcons.add, color: Colors.white)) : Container()
          ],
        ),
      ),
    );
  }

  Widget filterMenu() {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(color: Colors.grey)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(AntIcons.table, color: Palette.primaryColor,),
              SizedBox(width: 20.0),
              Icon(AntIcons.unordered_list),
            ],
          ),

          Row(
            children: [
              Text("Showing 1-12 of 15 results", style: TextStyle(color: Colors.white)),
              SizedBox(width: 20.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                height: 30,
                width: 1.0,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(width: 20.0),
              Text("SORT BY: ", style: TextStyle(color: Colors.white)),
              SizedBox(width: 10.0),
              DropdownButton(
                  dropdownColor: Colors.black87,
                  iconEnabledColor: Colors.white,
                  underline: SizedBox(),
                  onChanged: (newValue) {
                  },
                  value: "DEFAULT SORTING",
                  items: ["DEFAULT SORTING", "PRICE", "YEAR", "SIZE"].map((valueItem) {
                    return DropdownMenuItem(value: valueItem, child: Text(valueItem, style: TextStyle(color: Colors.white, fontSize: 14.0)));
                  }).toList())
            ],
          )
        ],
      ),

    );
  }

  Widget products(bool smallScreenGrid) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: GridView.count(
        crossAxisCount: smallScreenGrid ? 4 : 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 30.0,
        crossAxisSpacing: 30.0,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          buildWineDetail("wine1.jpg", "Nederburg The Winemasters Cabernet Sauvignon 75 cl", 5, "45.68", smallScreenGrid, context),
          buildWineDetail("wine2.jpg", "Rubis Chocolate Velvet Wine 50 cl", 5, "30.22", smallScreenGrid, context),
          buildWineDetail("wine3.jpg", "Baron Romero Spanish Red Wine 75 cl", 4, "25.68", smallScreenGrid, context),
          buildWineDetail("wine4.jpg", "Frontera Merlot 75 cl", 5, "50.45", smallScreenGrid, context),
          buildWineDetail("wine8.jpg", "Arra Pinotage 75 cl", 4, "24.58", smallScreenGrid, context),
          buildWineDetail("wine13.jpg", "Flowers Camp Meeting Ridge Sonoma", 4, "15.89", smallScreenGrid, context),
          buildWineDetail("wine9.jpg", "Alexana Revena Vineyard Dundee Hills Pinot Noir 2018", 5, "54.99", smallScreenGrid, context),
          buildWineDetail("wine12.jpg", "Carnivor Bourbon Barrel Aged California Cabernet", 5, "17.98", smallScreenGrid, context),

          buildWineDetail("bottle1.png", "Corte alle Mura Chianti", 5, "15.54", smallScreenGrid, context),
          buildWineDetail("bottle2.png", "Broadleaf Carbanet Sauvignon", 5, "18.25", smallScreenGrid, context),
          buildWineDetail("bottle4.png", "Bonpas Grand Orateur Rasteau", 4, "17.99", smallScreenGrid, context),
          buildWineDetail("bottle5.png", "Red Wine", 4, "10.54", smallScreenGrid, context),

        ],
      ),
    );
  }

  Widget buildCheckBox(String text, bool checked) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
          child: Checkbox(

              fillColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              checkColor: Colors.white,
              value: checked, onChanged: (value){}),
        ),

        Ctext(" $text", color: Colors.white, size: 12.0)
      ],
    );
  }
}

