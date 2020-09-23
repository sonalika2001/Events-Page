import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

class EventDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Event Title',
                style: kEventTextStyle,
              ),
              Text(
                'Event Category',
                style: kCategoryTextStyle,
              ),
              Text(
                'Event Description',
                style: kFilterTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
