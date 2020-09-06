import 'package:flutter/material.dart';
import 'package:events_page/widgets/events_list.dart';
import 'package:events_page/widgets/fliters.dart';

class EventsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xff121212),
      body: EventsList(),
      appBar: AppBar(
        elevation: 30,
        shadowColor: Color(0xff0FAB9B),
        toolbarHeight: 0.1 * MediaQuery.of(context).size.height,
        backgroundColor: Color(0xff2D2D2D),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Color(0xff77C7BE),
              ),
              onTap: () {
                //Navigator.pop(context);
              },
            ),
          ),
          Expanded(child: FiltersList()),
        ],
      ),
    );
  }
}
