import 'package:flutter/material.dart';

import 'aligned_list.dart';

class EventsList extends StatefulWidget {
  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: alignedEventList(MediaQuery.of(context).size.width),
    );
  }
}
