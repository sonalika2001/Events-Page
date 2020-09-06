import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

class FilterButton extends StatefulWidget {
  final String text;
  FilterButton(this.text);
  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: FlatButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Text(
          widget.text,
          style: kFilterTextStyle,
        ),
        textColor: isSelected ? Colors.black : Color(0xff77C7BE),
        color: isSelected ? Color(0xff0FAB9B) : Colors.black,
      ),
    );
  }
}
