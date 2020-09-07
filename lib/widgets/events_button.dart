import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

class EventsButton extends StatefulWidget {
  final String eventName;
  final String eventCategory;

  EventsButton({this.eventName, this.eventCategory});
  @override
  _EventsButtonState createState() => _EventsButtonState();
}

class _EventsButtonState extends State<EventsButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 7, top: 7),
      child: Container(
        decoration: kEventContainerStyle,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      widget.eventName,
                      style: kEventTextStyle,
                    ),
                    Divider(
                      color: kElementColor,
                      height: 28,
                      thickness: 1.5,
                      // indent: 0.1 * MediaQuery.of(context).size.width,
                      // endIndent: 0.08 * MediaQuery.of(context).size.width,
                    ),
                    Text(
                      widget.eventCategory,
                      style: kCategoryTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   width: 20,
            // ),
            Icon(
              Icons.info,
              color: kElementColor,
            ),
          ],
        ),
      ),
    );
  }
}
