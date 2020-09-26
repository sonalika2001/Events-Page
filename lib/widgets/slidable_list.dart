import 'dart:async';

import 'package:flutter/material.dart';
import '../events.dart';
import 'aligned_list.dart';

class AlignedEventList extends StatefulWidget {
  int index;
  double width;
  Key swipeKey;
  GlobalKey<ScaffoldState> scaffoldKey;
  AlignedEventList(
      this.index, this.width, this.swipeKey, this.data, this.scaffoldKey);

  Data data;
  @override
  _AlignedEventListState createState() => _AlignedEventListState();
}

class _AlignedEventListState extends State<AlignedEventList> {
  @override
  Widget build(BuildContext context) {
    if (widget.index % 2 != 0) {
      return GestureDetector(
        child: LeftAlignedListTile(
          i: widget.index,
          width: widget.width,
          data: widget.data,
        ),
        onHorizontalDragUpdate: (details) {
          if ((widget.width - details.delta.distance * 2) > 10) {
            setState(() {
              widget.width = widget.width - details.delta.distance * 2;
            });
          }
        },
        onHorizontalDragEnd: (details) async {
          await Future.delayed(Duration(milliseconds: 30));
          Scaffold.of(context).openDrawer();
          var timer = new Timer.periodic(Duration(milliseconds: 1), (time) {
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
    } else {
      return GestureDetector(
        child: RightAlignedListTile(
          i: widget.index,
          width: widget.width,
          data: widget.data,
        ),
        onHorizontalDragUpdate: (details) {
          if ((widget.width - details.delta.distance * 2) > 10) {
            setState(() {
              widget.width = widget.width - details.delta.distance * 2;
            });
          }
        },
        onHorizontalDragEnd: (details) async {
          await Future.delayed(Duration(milliseconds: 30));
          Scaffold.of(context).openEndDrawer();
          var timer = new Timer.periodic(Duration(milliseconds: 1), (time) {
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
}
