import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
Widget MyAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Icon(AssetImage(""assets/Images/mobile.png"")),
        Image.asset(
          "assets/Images/news1.png",
          height: 30,
          width: 30,
          fit: BoxFit.cover,
        ),
        Text(
          "  NewsRoom",
          style: GoogleFonts.tauri(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 22),
        ),
      ],
    ),
    backgroundColor: Color(0xff102A43),
    elevation: 0.0,
  );
}