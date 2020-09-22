import 'package:flutter/material.dart';
import 'events_button.dart';
import 'package:events_page/constants.dart';

class LeftAlignedListTile extends StatelessWidget {
  LeftAlignedListTile({
    @required this.i,
    @required this.width,
  });

  final int i;
  final width;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class RightAlignedListTile extends StatelessWidget {
  RightAlignedListTile({
    @required this.i,
    @required this.width,
  });

  final int i;
  final width;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
