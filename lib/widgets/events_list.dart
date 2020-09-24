import 'dart:convert';

import 'package:events_page/FilterList.dart';
import 'package:flutter/material.dart';

import '../events.dart';
import 'slidable_list.dart';
import 'filters.dart';

class EventsList extends StatefulWidget {
  final Key swipeKey = Key('swipeKey');

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
    _loadFromAsset(context);
    return loading
        ? Container()
        : Column(
          children: [
            Expanded(child: FiltersList(),flex: 1,),
            Expanded(flex: 4,
                          child: ListView.builder(
                  itemCount: FilterList.getUpdatedData().length,
                  itemBuilder: (BuildContext context, int index) {
                    return alignedEventList(
                        MediaQuery.of(context).size.width,
                        widget.swipeKey,
                        context,
                        index,
                        FilterList.getUpdatedData()[index]);
                  },
                ),
            ),
          ],
        );
  }
}
