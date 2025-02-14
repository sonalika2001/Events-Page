import 'package:flutter/material.dart';
import 'package:events_page/widgets/events_layout/events_list.dart';

import 'constants.dart';
import 'package:events_page/widgets/events_desc/drawers.dart';

class EventsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: kDarkThemeBackground,
        body: EventsList(scaffoldKey),
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   // elevation: 100,
        //   // shadowColor: kShadowColor,
        //   toolbarHeight: 0.07 * MediaQuery.of(context).size.height,
        //   backgroundColor: kDarkThemeContrast1,
        //   leading: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
        //     child: GestureDetector(
        //       child: Icon(
        //         Icons.arrow_back,
        //         color: Colors.white,
        //       ),
        //       onTap: () {
        //         //Navigator.pop(context);
        //       },
        //     ),
        //   ),
        //   actions: [
        //     Container(),
        //   ],
        // ),
        drawer: EventDrawer(),
        drawerEnableOpenDragGesture: false,
        endDrawer: EventDrawer(),
        endDrawerEnableOpenDragGesture: false,
      ),
    );
  }
}
