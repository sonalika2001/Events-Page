import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

class EventDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.black54,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 5),
                  child: Text(
                    'Event Name',
                    style: kEventTextStyle,
                  ),
                ),
                Text(
                  'Event Category',
                  style: kCategoryTextStyle,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Delegate Card",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "General",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Team Size",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "1 - 4",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 250,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Color(0xaa4635a7),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0.5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Register Now"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Event Description",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
