import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'filter_button.dart';

class FiltersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(children: [
        FilterButton('All', Icons.all_inclusive),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FilterButton('Music', Icons.music_note),
              FilterButton('English', Icons.language),
              FilterButton('Solo', Icons.videogame_asset),
              FilterButton('Hindi', Icons.videogame_asset),
              FilterButton('Other', Icons.videogame_asset),
              FilterButton('Painting', Icons.videogame_asset),
              FilterButton('Anime', Icons.videogame_asset),
              FilterButton('Public Speaking', Icons.videogame_asset),
              FilterButton('Gaming', Icons.videogame_asset),
              FilterButton('Comedy', Icons.videogame_asset),
              FilterButton('Bands', Icons.videogame_asset),
              FilterButton('Adventure', Icons.videogame_asset),
              FilterButton('Dance', Icons.videogame_asset),
              FilterButton('Drama', Icons.videogame_asset),
              FilterButton('Photography', Icons.videogame_asset),
              FilterButton('Fashion', Icons.videogame_asset),
              FilterButton('Sports', Icons.videogame_asset),
            ],
          ),
        ),
      ]),
    );
  }
}
