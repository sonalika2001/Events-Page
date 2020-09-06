import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'filter_button.dart';

class FiltersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          FilterButton('Music'),
          FilterButton('English'),
          FilterButton('Solo'),
          FilterButton('Hindi'),
          FilterButton('Other'),
          FilterButton('Painting'),
          FilterButton('Anime'),
          FilterButton('Public Speaking'),
          FilterButton('Gaming'),
          FilterButton('Comedy'),
          FilterButton('Bands'),
          FilterButton('Adventure'),
          FilterButton('Dance'),
          FilterButton('Drama'),
          FilterButton('Photography'),
          FilterButton('Fashion'),
          FilterButton('Sports'),
        ],
      ),
    );
  }
}
