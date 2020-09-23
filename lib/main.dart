import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:events_page/events_screen.dart';
import 'events.dart';

void main() {
  runApp(EventsPage());
}

class EventsPage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventsScreen(),
      theme: ThemeData.dark(),
    );
  }
}
