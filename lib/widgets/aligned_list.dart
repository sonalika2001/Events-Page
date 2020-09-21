import 'package:flutter/material.dart';
import 'events_button.dart';
import 'package:events_page/constants.dart';

List<Widget> alignedTile = [];

List<Widget> alignedEventList(var width) {
  for (int i = 0; i < 20; i++) {
    if (i % 2 != 0) {
      alignedTile.add(
        Row(
          children: <Widget>[
            Expanded(
                child: EventsButton(
              eventName: 'Event Name',
              eventCategory: 'Category',
              eventTileStyle: eventTileStyle(i),
            )),
            SizedBox(
              width: 0.2 * width,
            ),
          ],
        ),
      );
    } else {
      alignedTile.add(
        Row(
          children: <Widget>[
            SizedBox(
              width: 0.2 * width,
            ),
            Expanded(
                child: EventsButton(
              eventName: 'Event Name',
              eventCategory: 'Category',
              eventTileStyle: eventTileStyle(i),
            )),
          ],
        ),
      );
    }
  }
  return alignedTile;
}
