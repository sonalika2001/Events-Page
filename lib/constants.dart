import 'package:flutter/material.dart';

const kFilterTextStyle = TextStyle(
  fontSize: 15,
);

const kEventTextStyle = TextStyle(
  fontFamily: 'Cabin',
  // color: Colors.white,
  fontSize: 25,
  // fontWeight: FontWeight.w500,
);

const kCategoryTextStyle = TextStyle(
  fontFamily: 'Cabin',
  // color: Colors.white,
  fontSize: 15,
);

const kShadowColor = Color(0xff0FAB9B);
const kDarkTextColor = Color(0xffDDF4F0);
const kTextColor = Colors.white; //Color(0xff77C7BE);
const kDarkThemeBackground = Color(0xff121212);
const kDarkThemeContrast1 = Color(0xff2D2D2D);
const kDarkThemeContrast2 = Color(0xff1E1E1E);
const kElementColor = Color(0xff0FAB9B);

const kPrimaryThemeColor = Color(0xff4635a7);
const kAccentThemeColor = Color(0xffb659b2);

const kradius = Radius.circular(45);

var kleftswipebackground = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      kShadowColor,
      kElementColor,
      kDarkThemeBackground,
    ],
  ),
);

var krightswipebackground = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      kDarkThemeBackground,
      kElementColor,
      kShadowColor,
    ],
  ),
);

BoxDecoration eventTileStyle(int index) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: index % 2 == 0 ? Alignment.topLeft : Alignment.topRight,
      end: index % 2 == 0 ? Alignment(1.5, 2) : Alignment(-1.5, -2),
      colors: [
        // const Color(0xaab659b2),
        // const Color(0x99000000),
        const Color(0x444635a7),
        const Color(0x99000000),
        // const Color(0xffb659b2)
      ],
    ),
    borderRadius: index % 2 != 0
        ? BorderRadius.only(topRight: kradius, bottomRight: kradius)
        : BorderRadius.only(topLeft: kradius, bottomLeft: kradius),
  );
}
