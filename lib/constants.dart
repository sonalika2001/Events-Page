import 'package:flutter/material.dart';

const kFilterTextStyle = TextStyle(
  fontSize: 18,
  fontFamily: 'Orbitron',
  fontWeight: FontWeight.w400,
);

const kEventTextStyle = TextStyle(
  fontFamily: 'Acme',
  color: kTextColor,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);

const kCategoryTextStyle = TextStyle(
  color: kDarkTextColor,
  fontSize: 16,
  fontFamily: 'Rajdhani',
);

var kEventContainerStyle = BoxDecoration(
  color: kDarkThemeContrast2,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: kShadowColor,
      blurRadius: 4,
      offset: Offset.fromDirection(
        3,
      ),
    ),
  ],
);

const kShadowColor = Color(0xff0FAB9B);
const kDarkTextColor = Color(0xffDDF4F0);
const kTextColor = Colors.white; //Color(0xff77C7BE);
const kDarkThemeBackground = Color(0xff121212);
const kDarkThemeContrast1 = Color(0xff2D2D2D);
const kDarkThemeContrast2 = Color(0xff1E1E1E);
const kElementColor = Color(0xff0FAB9B);
