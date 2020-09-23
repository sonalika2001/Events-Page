import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';
import '../events.dart';
import 'aligned_list.dart';

Widget alignedEventList(
    var width, Key swipeKey, BuildContext context, int index, Data data) {
  if (index % 2 != 0) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Dismissible(
        key: swipeKey,
        direction: DismissDirection.startToEnd,
        movementDuration: Duration(
          microseconds: 100,
        ),
        background: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: krightswipebackground,
          ),
        ),
        confirmDismiss: (direction) async {
          Scaffold.of(context).openDrawer();
          return false;
        },
        child: LeftAlignedListTile(
          i: index,
          width: width,
          data: data,
        ),
      ),
    );
  } else {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openEndDrawer();
      },
      child: Dismissible(
        key: swipeKey,
        direction: DismissDirection.endToStart,
        movementDuration: Duration(
          microseconds: 100,
        ),
        background: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            decoration: kleftswipebackground,
          ),
        ),
        confirmDismiss: (direction) async {
          Scaffold.of(context).openEndDrawer();
          return false;
        },
        child: RightAlignedListTile(
          i: index,
          width: width,
          data: data,
        ),
      ),
    );
  }
}
