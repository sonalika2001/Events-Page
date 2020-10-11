import 'package:events_page/FilterList.dart';
import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

class FilterButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final Function(String) onTap;
  FilterButton(this.text, this.icon, this.onTap);

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton>
    with AutomaticKeepAliveClientMixin {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: FlatButton(
            shape: CircleBorder(),
            onPressed: () {
              setState(() {
                isSelected = !isSelected;
                widget.onTap(widget.text);
              });
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor:
                  isSelected ? const Color(0x50ffffff) : Color(0x1affffff),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 10, fontFamily: 'Cabin'),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
