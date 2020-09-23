import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';
import 'aligned_list.dart';

List<Widget> alignedTile = [];

List<Widget> alignedEventList(var width, Key swipeKey, BuildContext context) {
  for (int i = 0; i < 20; i++) {
    if (i % 2 != 0) {
      alignedTile.add(
        GestureDetector(
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
              i: i,
              width: width,
            ),
          ),
        ),
      );
    } else {
      alignedTile.add(
        GestureDetector(
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
              i: i,
              width: width,
            ),
          ),
        ),
      );
    }
  }
  return alignedTile;
}
