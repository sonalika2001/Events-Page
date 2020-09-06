import 'package:flutter/material.dart';
import 'package:events_page/widgets/events_button.dart';

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 0.2 * MediaQuery.of(context).size.height,
      children: <Widget>[

      ],
    );
  }
}
