import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Ctext(String text, {FontWeight weight = FontWeight.normal, Color? color = Colors.black87, double? size = 14, TextAlign align = TextAlign.start, int maxLines = 2}){
  return Text(
    text,
    style: GoogleFonts.laila(color: color, fontWeight: weight, fontSize: size),
    textAlign: align,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
  );
}