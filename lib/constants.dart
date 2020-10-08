import 'package:flutter/material.dart';

const kFilterTextStyle = TextStyle(
  fontSize: 15,
);

const kEventTextStyle = TextStyle(
  fontFamily: 'Cabin',
  // color: Colors.white,
  fontSize: 30,
  // fontWeight: FontWeight.w500,
);

const kInfoTextStyle = TextStyle(
  fontFamily: 'Cabin',
  // color: Colors.white,
  fontSize: 20,
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

const a = Color(0xffDDD5E2);
const b = Color(0xffCFBEE0);
const c = Color(0xffBC9EDA);
const d = Color(0xffAA7BD9);
const e = Color(0xff9C63D8);

const f = Color(0xff7123AD);
const g = Color(0xff5019B1);
const h = Color(0xffC442B6);
const i = Color(0xffF1C0DD);
const j = Color(0xffAF9EC9);

const k = Color(0xffDA71CE);

BoxDecoration eventDesc = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  // border: Border.all(width: 2, color: d, style: BorderStyle.solid),
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [b, c, d, e],
  ),
);

BoxDecoration eventDesc2 = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0x444635a7),
      const Color(0x99000000),
    ],
  ),
);
