import 'package:flutter/material.dart';

class EventsButton extends StatefulWidget {
  final String eventName;
  final String eventCategory;
  final BoxDecoration eventTileStyle;
  final bool align; //false for left, true for right

  EventsButton(
      {this.eventName, this.eventCategory, this.eventTileStyle, this.align});
  @override
  _EventsButtonState createState() => _EventsButtonState();
}

class _EventsButtonState extends State<EventsButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: widget.eventTileStyle,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.align == true
                  ? CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0x10ffffff),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white30,
                        size: 25,
                      ),
                    )
                  : SizedBox.shrink(),
              Column(children: [
                Text(
                  widget.eventName,
                  style: TextStyle(fontSize: 20, fontFamily: 'Cabin'),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Category Name",
                  style: TextStyle(fontSize: 10, fontFamily: 'Cabin'),
                ),
              ]),
              SizedBox(
                width: 20,
              ),
              widget.align == true
                  ? SizedBox.shrink()
                  : CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0x10ffffff),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white30,
                        size: 25,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

// Padding(
//   padding: EdgeInsets.symmetric(vertical: 15),
//   child: Container(
//     decoration: widget.eventTileStyle,
//     padding: EdgeInsets.all(15),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         Icon(
//           widget.align == true ? Icons.arrow_back_ios : null,
//           color: Colors.white,
//           size: 20,
//         ),
//         Expanded(
//           child: Padding(
//             padding: widget.align == false
//                 ? const EdgeInsets.symmetric(horizontal: 50, vertical: 10)
//                 : const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//             child: Text(
//               widget.eventName,
//               style: TextStyle(fontSize: 20),
//             ),
//             //Column(
//             //   crossAxisAlignment: CrossAxisAlignment.center,
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: <Widget>[
//             //     Text(
//             //       widget.eventName,
//             //       style: TextStyle(fontSize: 20),
//             //     ),
//             //     Divider(
//             //       color: kElementColor,
//             //       height: 28,
//             //       thickness: 1.5,
//             //       // indent: 0.1 * MediaQuery.of(context).size.width,
//             //       // endIndent: 0.08 * MediaQuery.of(context).size.width,
//             //     ),
//             //     Text(
//             //       widget.eventCategory,
//             //       style: kCategoryTextStyle,
//             //     ),
//             //   ],
//             // ),
//           ),
//         ),
//         Icon(
//           widget.align == false ? Icons.arrow_forward_ios : null,
//           color: Colors.white,
//           size: 20,
//         ),
//       ],
//     ),
//   ),
// )
