import 'dart:convert';

import 'package:events_page/FilterList.dart';
import 'package:events_page/category.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../events.dart';
import '../events_desc/slidable_list.dart';
import '../filter/filters_list.dart';

class EventsList extends StatefulWidget {
  final Key swipeKey = Key('swipeKey');
  final GlobalKey<ScaffoldState> scaffoldKey;

  EventsList(this.scaffoldKey);

  @override
  _EventsListState createState() => _EventsListState();
}

class _EventsListState extends State<EventsList> {
  bool loading = true;
  List<Data> _data;
  List<Data1> _data1;
  Future<void> _loadFromAsset(BuildContext context) async {
    // String data =
    //     await DefaultAssetBundle.of(context).loadString("assets/events.json");
    var data = await http.get("https://techtatvadata.herokuapp.com/events");
    Events events = Events.fromJson(json.decode(data.body));
    var data1 = await http.get("https://techtatvadata.herokuapp.com/category");
    Category category = Category.fromJson(json.decode(data1.body));
    setState(() {
      FilterList.getData = events.data;
      _data = FilterList.getUpdatedData();
      _data1 = category.data;
      loading = false;
    });
  }

  @override
  void initState() {
    _loadFromAsset(context);
    super.initState();
  }

  void updatetags(String tag) {
    if (!FilterList.tagsSelected.contains(tag)) {
      FilterList.tagsSelected.add(tag);
    } else {
      FilterList.tagsSelected.remove(tag);
    }
    setState(() {
      _data = FilterList.getUpdatedData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container()
        : Column(
            children: [
              // Expanded(
              //   flex: 2,
              //   child: FiltersList(
              //     onTap: updatetags,
              //   ),
              // ),
              Expanded(
                flex: 2,
                child: Container(
                  child: FiltersList(
                    onTap: updatetags,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          spreadRadius: 6,
                          offset: Offset(0, 1)),
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 3.0,
                        spreadRadius: 6,
                        offset: Offset(-1, -1),
                      ),
                    ],
                  ),
                ),
              ),

              // Expanded(
              //   flex: 1,
              //   child: Divider(
              //     color: Colors.white10,
              //     height: 40,
              //     thickness: 1,
              //     // indent: 0.1 * MediaQuery.of(context).size.width,
              //     // endIndent: 0.08 * MediaQuery.of(context).size.width,
              //   ),
              // ),

              Expanded(
                flex: 11,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView.builder(
                    itemCount: _data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AlignedEventList(
                          index,
                          MediaQuery.of(context).size.width,
                          widget.swipeKey,
                          _data[index],
                          _data1);
                    },
                  ),
                ),
              ),
            ],
          );
  }
}
