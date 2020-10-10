import 'dart:async';

import 'package:events_page/category.dart';
import 'package:events_page/widgets/events_desc/drawers.dart';
import 'package:flutter/material.dart';
import '../../events.dart';
import '../events_layout/aligned_list.dart';

class AlignedEventList extends StatefulWidget {
  int index;
  double width;
  Key swipeKey;
  AlignedEventList(
      this.index, this.width, this.swipeKey, this.data, this.data1);
  List<Data1> data1;
  Data data;
  @override
  _AlignedEventListState createState() => _AlignedEventListState();
}

class _AlignedEventListState extends State<AlignedEventList> {
  @override
  void initState() {
    super.initState();
  }

  Future<Data1> getCategory(int id) async {
    id = 1; //comment this line for actual use. Only here for testing
    for (int i = 0; i < widget.data1.length; i++) {
      if (widget.data1[i].id == id) {
        return widget.data1[i];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: (widget.index % 2 == 0)
          ? RightAlignedListTile(
              i: widget.index,
              width: widget.width,
              data: widget.data,
            )
          : LeftAlignedListTile(
              i: widget.index,
              width: widget.width,
              data: widget.data,
            ),
      onHorizontalDragUpdate: (details) {
        if ((widget.width - details.delta.distance * 2) > 100 &&
            !((details.delta.direction == 0) ^ (widget.index % 2 != 0))) {
          setState(() {
            widget.width = widget.width - details.delta.distance * 2;
          });
        }
      },
      onHorizontalDragEnd: (details) async {
        print('${details.primaryVelocity},${widget.index}');
        await Future.delayed(Duration(milliseconds: 30));
        EventDrawer.data1 = widget.data;
        EventDrawer.data2 = await getCategory(widget.data.category);
        if (details.primaryVelocity < 0 && widget.index % 2 == 0)
          Scaffold.of(context).openEndDrawer();
        else if (details.primaryVelocity > 0 && widget.index % 2 != 0)
          Scaffold.of(context).openDrawer();

        Timer.periodic(Duration(milliseconds: 1), (time) {
          if (mounted)
            setState(() {
              if (widget.width <= MediaQuery.of(context).size.width - 5)
                widget.width = widget.width + 5;
              else
                time.cancel();
            });
        });
      },
    );
  }
}
