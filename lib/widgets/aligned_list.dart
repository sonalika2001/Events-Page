import 'package:flutter/material.dart';
import '../events.dart';
import 'events_button.dart';
import 'package:events_page/constants.dart';

class LeftAlignedListTile extends StatefulWidget {
  LeftAlignedListTile({@required this.i, this.width, @required this.data});
  final Data data;
  final int i;
  final double width;

  @override
  _LeftAlignedListTileState createState() => _LeftAlignedListTileState();
}

class _LeftAlignedListTileState extends State<LeftAlignedListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: EventsButton(
          eventName: widget.data.name,
          eventCategory: widget.data.category.toString(),
          eventTileStyle: eventTileStyle(widget.i),
          align: false,
        )),
        SizedBox(
          width: 0.15 * widget.width,
        ),
      ],
    );
  }
}

class RightAlignedListTile extends StatelessWidget {
  RightAlignedListTile(
      {@required this.i, @required this.width, @required this.data});
  final Data data;
  final int i;
  final width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 0.15 * width,
        ),
        Expanded(
            child: EventsButton(
          eventName: data.name,
          eventCategory: data.category.toString(),
          eventTileStyle: eventTileStyle(i),
          align: true,
        )),
      ],
    );
  }
}
