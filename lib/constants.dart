import 'package:flutter/material.dart';

const kFilterTextStyle = TextStyle(
  fontSize: 15,
  fontFamily: 'RobotoSlab',
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

const kShadowColor = Color(0xff0FAB9B);
const kDarkTextColor = Color(0xffDDF4F0);
const kTextColor = Colors.white; //Color(0xff77C7BE);
const kDarkThemeBackground = Color(0xff121212);
const kDarkThemeContrast1 = Color(0xff2D2D2D);
const kDarkThemeContrast2 = Color(0xff1E1E1E);
const kElementColor = Color(0xff0FAB9B);

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
    color: kDarkThemeContrast2,
    borderRadius: index % 2 != 0
        ? BorderRadius.only(topRight: kradius, bottomRight: kradius)
        : BorderRadius.only(topLeft: kradius, bottomLeft: kradius),
    
  );
}
