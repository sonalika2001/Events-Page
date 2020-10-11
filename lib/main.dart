import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:events_page/events_screen.dart';

void main() {
  runApp(EventsPage());
}

class EventsPage extends StatelessWidget {
  EventsPage() {
    getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventsScreen(),
      theme: ThemeData.dark(),
    );
  }
}

Map<int, Map> categories = {};

getCategory() async {
  var data1 = await http.get("https://techtatvadata.herokuapp.com/category");
  Map data = json.decode(data1.body);
  print(data);
  for (Map i in data["data"]) {
    categories.putIfAbsent(i["id"], () => i);
  }
}
