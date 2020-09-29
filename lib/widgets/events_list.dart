import 'dart:convert';

import 'package:events_page/FilterList.dart';
import 'package:flutter/material.dart';

import '../events.dart';
import 'slidable_list.dart';
import 'filters_list.dart';

class EventsList extends StatefulWidget {
  final Key swipeKey = Key('swipeKey');
  final GlobalKey<ScaffoldState> scaffoldKey;

  EventsList(this.scaffoldKey);

  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  bool loading = true;
  Future<void> _loadFromAsset(BuildContext context) async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/events.json");
    Events events = Events.fromJson(json.decode(data));
    setState(() {
      FilterList.getData = events.data;
      loading = false;
    });
  }

  @override
  void initState() {
    _loadFromAsset(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // _loadFromAsset(context);
    return loading
        ? Container()
        : Column(
            children: [
              Expanded(
                flex: 2,
                child: FiltersList(),
              ),
              Expanded(
                flex: 1,
                child: Divider(
                  color: Colors.white10,
                  height: 40,
                  thickness: 1,
                  // indent: 0.1 * MediaQuery.of(context).size.width,
                  // endIndent: 0.08 * MediaQuery.of(context).size.width,
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemCount: FilterList.getUpdatedData().length,
                  itemBuilder: (BuildContext context, int index) {
                    return AlignedEventList(
                        index,
                        MediaQuery.of(context).size.width,
                        widget.swipeKey,
                        FilterList.getUpdatedData()[index]);
                  },
                ),
              ),
            ],
          );
  }
}
