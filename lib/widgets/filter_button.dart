import 'package:events_page/FilterList.dart';
import 'package:flutter/material.dart';
import 'package:events_page/constants.dart';

class FilterButton extends StatefulWidget {
  final String text;
  final IconData icon;
  FilterButton(this.text, this.icon);

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: FlatButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
            if (!FilterList.tagsSelected.contains(widget.text)) {
              print("selected");
              FilterList.tagsSelected.add(widget.text);
            } else {
              print("deselected");
              FilterList.tagsSelected.remove(widget.text);
            }
          });
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Icon(
                  widget.icon,
                  color: isSelected ? Colors.white : Colors.black,
                ),
                backgroundColor: isSelected ? Colors.black : Colors.white,
              ),
            ),
            Text(
              widget.text,
              style: kFilterTextStyle,
            ),
          ],
        ),
        textColor: isSelected ? Colors.black : kTextColor,
        color: isSelected ? kShadowColor : Colors.black,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(8),
        //   ),
        // ),
      ),
    );
  }
}
