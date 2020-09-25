import 'package:flutter/material.dart';
import 'package:events_page/widgets/events_list.dart';
import 'package:events_page/widgets/filters.dart';
import 'constants.dart';
import 'package:events_page/widgets/drawers.dart';

class EventsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kDarkThemeBackground,
      body: EventsList(scaffoldKey),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 100,
        shadowColor: kShadowColor,
        toolbarHeight: 0.09 * MediaQuery.of(context).size.height,
        backgroundColor: kDarkThemeContrast1,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GestureDetector(
            child: Icon(
              Icons.arrow_back,
              color: kTextColor,
            ),
            onTap: () {
              //Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Container(),
        ],
      ),
      drawer: EventDrawer(),
      drawerEnableOpenDragGesture: false,
      endDrawer: EventDrawer(),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
