import 'package:flutter/material.dart';

import 'custom_text.dart';

Widget headerDiv(String title, bool smallScreenGrid){
  return Container(
    margin: EdgeInsets.only(
        top: smallScreenGrid ? 40.0 : 30.0,
        bottom: smallScreenGrid ? 10.0 : 10.0),
    child: Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Ctext(title, size:  smallScreenGrid ? 30.0 : 20.0, weight: FontWeight.bold),
    ),
  );
}