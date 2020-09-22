import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';
import 'aligned_list.dart';

List<Widget> alignedTile = [];

List<Widget> alignedEventList(var width, Key swipeKey) {
  for (int i = 0; i < 20; i++) {
    if (i % 2 != 0) {
      alignedTile.add(
        Dismissible(
          key: swipeKey,
          direction: DismissDirection.startToEnd,
          background: Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: krightswipebackground,
            ),
          ),
          confirmDismiss: (direction) async {
            print('swiped');
            return false;
          },
          child: LeftAlignedListTile(
            i: i,
            width: width,
          ),
        ),
      );
    } else {
      alignedTile.add(
        Dismissible(
          key: swipeKey,
          direction: DismissDirection.endToStart,
          background: Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: kleftswipebackground,
            ),
          ),
          confirmDismiss: (direction) async {
            print('swiped');
            return false;
          },
          child: RightAlignedListTile(
            i: i,
            width: width,
          ),
        ),
      );
    }
  }
  return alignedTile;
}
