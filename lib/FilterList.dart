import 'events.dart';

class FilterList {
  static List<String> tagsSelected = [];
  static List<Data> listData = [];
  static List<Data> getData = [];

  static List<Data> getUpdatedData() {
    if (tagsSelected.length == 0 || tagsSelected.contains("All")) {
      return getData;
    } else {
      Data _data;
      String tag;
      listData = [];
      int flag;
      for (_data in getData) {
        for (tag in tagsSelected) {
          if (_data.tags.contains(tag) && !listData.contains(_data)) {
            flag = 1;
          } else {
            flag = 0;
            break;
          }
        }
        if (flag == 1) {
          listData.add(_data);
        }
      }
      return listData;
    }
  }
}
