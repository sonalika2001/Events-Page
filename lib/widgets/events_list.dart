import 'package:flutter/material.dart';
import 'package:events_page/widgets/events_button.dart';

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 0.22 * MediaQuery.of(context).size.height,
      diameterRatio: 2,
      children: <Widget>[
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
        EventsButton(eventName: 'Event Name', eventCategory: 'Category'),
      ],
    );
  }
}
