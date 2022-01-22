import 'package:ant_icons/ant_icons.dart';
import 'package:winestore_flutter_web/widgets/custom_text.dart';
import 'package:winestore_flutter_web/widgets/palette.dart';
import 'package:winestore_flutter_web/widgets/shop.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:ionicons/ionicons.dart';

import 'homePage.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var smallScreenGrid = currentWidth > 1201;
    var extraSmallScreenGrid = currentWidth > 1025;

    return Container(
    width: smallScreenGrid
        ? 300.0
        : extraSmallScreenGrid
            ? 270.0
            : 0.0,
    color: Colors.white,
    child: Stack(
      children: [Column(
        children: [
          Expanded(
            child: Container(

             //color: Colors.black,
              child: Column(

                children: [
                  Container(
                    alignment: Alignment.center,
                   // color: Colors.black,
                    height: 100.0,
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/logo-black.png"),
                          Expanded(child: Ctext("The Wineyard", color: Palette.primaryColor, weight: FontWeight.bold, size: 16.0))
                        ],
                      ),
                    )
                  ),

                  Divider(color: Colors.grey),

                  SizedBox(height: 10,),
                  
                  buildOption(Ionicons.home_outline, "Home", 1, context),
                  buildOption(AntIcons.shop_outline, "Our wines", 2, context),
                  buildOption(Ionicons.book_outline, "Blog", 3, context),
                  buildOption(AntIcons.shopping_outline, "My Orders", 4, context),
                  buildOption(AntIcons.bell_outline, "Notifications", 5, context),
                  buildOption(AntIcons.info_circle_outline, "About", 6, context),
                  buildOption(AntIcons.question_circle_outline, "Support", 7, context),
                  buildOption(AntIcons.book_outline, "Privacy and Policy", 8, context),
                  buildOption(AntIcons.logout_outline, "Logout", 9, context),
                ],
              ),
            ),
          )],
      ),]
    ),
      );
  }

 Widget buildOption(IconData icon, String title, int id, BuildContext context){
    return Container(

      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(0.0),
          ),
          padding: EdgeInsets.all(18.0),
        ),
        onPressed: () {
            switch (id) {
              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                break;
              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (context) => Shop()));
                break;
              case 3:

                break;
              case 4:
                Navigator.pop(context);
                break;
              case 5:
                Navigator.pop(context);
                break;
              case 6:
                Navigator.pop(context);
                break;
              case 8:
                Navigator.pop(context);
                break;
            }

        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Icon(
                icon,
                size: 23.0,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, top: 0.0, right: 10.0, bottom: 0.0),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
