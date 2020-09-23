import 'package:flutter/material.dart';

import 'slidable_list.dart';

class EventsList extends StatefulWidget {
  final Key swipeKey = Key('swipeKey');

  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: alignedEventList(
        MediaQuery.of(context).size.width,
        widget.swipeKey,
        context,
      ),
    );
  }
}
