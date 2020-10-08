import 'package:events_page/FilterList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'filter_button.dart';

class FiltersList extends StatelessWidget {
  final Function(String) onTap;
  FiltersList({this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(children: [
        FilterButton('All', Icons.all_inclusive, onTap),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              FilterButton('Music', Icons.music_note, onTap),
              FilterButton('English', Icons.language, onTap),
              FilterButton('Solo', Icons.videogame_asset, onTap),
              FilterButton('Hindi', Icons.videogame_asset, onTap),
              FilterButton('Other', Icons.videogame_asset, onTap),
              FilterButton('Painting', Icons.videogame_asset, onTap),
              FilterButton('Anime', Icons.videogame_asset, onTap),
              FilterButton('Public Speaking', Icons.videogame_asset, onTap),
              FilterButton('Gaming', Icons.videogame_asset, onTap),
              FilterButton('Comedy', Icons.videogame_asset, onTap),
              FilterButton('Bands', Icons.videogame_asset, onTap),
              FilterButton('Adventure', Icons.videogame_asset, onTap),
              FilterButton('Dance', Icons.videogame_asset, onTap),
              FilterButton('Drama', Icons.videogame_asset, onTap),
              FilterButton('Photography', Icons.videogame_asset, onTap),
              FilterButton('Fashion', Icons.videogame_asset, onTap),
              FilterButton('Sports', Icons.videogame_asset, onTap),
            ],
          ),
        ),
      ]),
    );
  }
}
