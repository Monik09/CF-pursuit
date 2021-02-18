import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appDrawer() {
  return Drawer(
    child: Column(
      children: [
        Container(
          height: 150,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          margin: EdgeInsets.only(bottom: 10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "CF-Pursuit",
              style: GoogleFonts.openSans(fontSize: 30, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.teal,
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            "View Profile",
            style: GoogleFonts.roboto(fontSize: 20),
          ),
        ),
        Divider(),
        FlatButton(
          onPressed: () {},
          child: Text(
            "Ranklist",
            style: GoogleFonts.roboto(fontSize: 20),
          ),
        ),
        Divider(),
      ],
    ),
  );
}