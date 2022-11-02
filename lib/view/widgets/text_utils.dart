import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final Color ? color;
  final double fontSize;
  final FontWeight fontWeight;

  TextUtils({
    required this.fontSize,
    required this.fontWeight,
    required this.text,
     this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: GoogleFonts.lato(
        textStyle: TextStyle(
          decoration: TextDecoration.none,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
         overflow: TextOverflow.ellipsis
          
        ),
      ),
    );
  }
}