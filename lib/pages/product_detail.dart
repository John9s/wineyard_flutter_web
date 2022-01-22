import 'package:ant_icons/ant_icons.dart';
import 'package:winestore_flutter_web/models/wine_model.dart';
import 'package:winestore_flutter_web/topBar.dart';
import 'package:winestore_flutter_web/widgets/custom_text.dart';
import 'package:winestore_flutter_web/widgets/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottom_bar.dart';

class ProductDetail extends StatefulWidget {
  final Wine wine;

  const ProductDetail(this.wine, {Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}


class _ProductDetailState extends State<ProductDetail> {

  int qty = 1;

  @override
  Widget build(BuildContext context) {

    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    final img = Image.asset("assets/bottles/${widget.wine.uri}", fit: BoxFit.fill,);

    final details = Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${widget.wine.name}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),

            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(AntIcons.form),
                CupertinoButton(
                    onPressed: (){},
                    child: Text("Write a review", style: TextStyle(fontSize: 11.0, color: Colors.grey, decoration: TextDecoration.underline),)),
              ],
            ),

            SizedBox(height: 20.0,),

            SizedBox(
              width:400,
                child: Text("Smooth and full mouthfeel with a bold structure. Rich blackberry and dark plum from the Cabernet with sweet aromatics of crème brûlée obtained from time in Bourbon barrels.", maxLines: 2, overflow: TextOverflow.ellipsis,)),

            CupertinoButton(
              padding: EdgeInsets.zero,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Read more ", style: TextStyle(fontSize: 14.0, color: CupertinoColors.label, decoration: TextDecoration.underline),),

                Icon(AntIcons.double_right, size: 12, color: Colors.black,),
              ],
            ), onPressed: (){}),

            SizedBox(height: 20.0,),

            Text("\$${widget.wine.price}",  style: TextStyle(
              color: Palette.primaryColor,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),

            SizedBox(height: 20.0,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SKU:", style: TextStyle(fontWeight: FontWeight.bold, )),
                    SizedBox(height: 20.0,),

                    Text("UPC:", style: TextStyle(fontWeight: FontWeight.bold)),

                    SizedBox(height: 20.0,),

                    Text("Shipping:", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),

                SizedBox(width: 50.0,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("G231134909"),

                    SizedBox(height: 20.0,),

                    Text("085003344678912"),

                    SizedBox(height: 20.0,),

                    Text("Calculated at Checkout")
                  ],
                )
              ],
            ),

            Divider(thickness: 0.4, color: Colors.grey, height: 50.0,),

            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle
                  ),
                  child: RaisedButton(
                    padding: EdgeInsets.zero,
                    hoverColor: Colors.black.withOpacity(0.3),
                    splashColor: Colors.white.withOpacity(0.3) ,
                    color: Colors.indigo[900],
                    onPressed: (){
                      setState(() {
                        qty > 0 ? qty -= 1 : null;
                      });
                    },
                    child: Ctext("-", color: Colors.white),
                  ),
                ),

                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle
                  ),

                  child: Center(child: Text("$qty")),
                ),

                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.rectangle
                  ),
                  child: RaisedButton(
                    padding: EdgeInsets.zero,
                    hoverColor: Colors.black.withOpacity(0.3),
                    splashColor: Colors.white.withOpacity(0.3) ,
                    color: Colors.indigo[900],
                    onPressed: (){
                      setState(() {
                        qty += 1;
                      });
                    },
                    child: Ctext("+", color: Colors.white),
                  ),
                ),

              ],
            ),

            SizedBox(height: 30,),

            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle
              ),
              child: RaisedButton(
                padding: EdgeInsets.zero,
                hoverColor: Colors.black.withOpacity(0.3),
                splashColor: Colors.white.withOpacity(0.3) ,
                color: Colors.indigo[900],
                onPressed: (){},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(CupertinoIcons.shopping_cart, color: Colors.white),

                      SizedBox(width: 10.0,),

                      Text("ADD TO CART", style: TextStyle(color: Colors.white),)

                    ],
                  ),
                ),
              ),
            ),

          ]),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(bottom: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(Colors.black),
              smallScreenGrid ?  Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 500,
                              width: 500,
                              child: img,

                            ),

                            SizedBox(height: 10,),

                            Container(
                              height: 150,
                              width: 150,
                              child: img,
                            )
                          ],
                        ),
                      ),

                      SizedBox(width: 50,),

                      Expanded(child: details)
                    ],
                  ),
              )
                  : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: img,
                      ),
                      details
                    ]
                  ),

                SizedBox(height:  smallScreenGrid ? 50 : 20,),

                BottomBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
