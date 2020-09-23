/// data : [{"name":"Solo Dance","category":12,"delCardType":56,"longDesc":"abcdefghijklmnopqrstuvwxyz","shortDesc":"abcdefgh","minTeamSize":1,"maxTeamSize":1,"tags":["Dance","Solo",null]},{"name":"Battle of Bands","category":10,"delCardType":84,"longDesc":"abcdefghijklmnopqrstuvwxyz","shortDesc":"abcdefgh","minTeamSize":3,"maxTeamSize":8,"tags":["Music","Group"]},{"name":"CSGO","category":44,"delCardType":23,"longDesc":"abcdefghijklmnopqrstuvwxyz","shortDesc":"abcdefgh","minTeamSize":1,"maxTeamSize":5,"tags":["Gaming","Solo","Group"]}]

class Events {
  List<Data> _data;

  List<Data> get data => _data;

  Events({List<Data> data}) {
    _data = data;
  }

  Events.fromJson(dynamic json) {
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// name : "Solo Dance"
/// category : 12
/// delCardType : 56
/// longDesc : "abcdefghijklmnopqrstuvwxyz"
/// shortDesc : "abcdefgh"
/// minTeamSize : 1
/// maxTeamSize : 1
/// tags : ["Dance","Solo",null]

class Data {
  String _name;
  int _category;
  int _delCardType;
  String _longDesc;
  String _shortDesc;
  int _minTeamSize;
  int _maxTeamSize;
  List<String> _tags;

  String get name => _name;
  int get category => _category;
  int get delCardType => _delCardType;
  String get longDesc => _longDesc;
  String get shortDesc => _shortDesc;
  int get minTeamSize => _minTeamSize;
  int get maxTeamSize => _maxTeamSize;
  List<String> get tags => _tags;

  Data(
      {String name,
      int category,
      int delCardType,
      String longDesc,
      String shortDesc,
      int minTeamSize,
      int maxTeamSize,
      List<String> tags}) {
    _name = name;
    _category = category;
    _delCardType = delCardType;
    _longDesc = longDesc;
    _shortDesc = shortDesc;
    _minTeamSize = minTeamSize;
    _maxTeamSize = maxTeamSize;
    _tags = tags;
  }

  Data.fromJson(dynamic json) {
    _name = json["name"];
    _category = json["category"];
    _delCardType = json["delCardType"];
    _longDesc = json["longDesc"];
    _shortDesc = json["shortDesc"];
    _minTeamSize = json["minTeamSize"];
    _maxTeamSize = json["maxTeamSize"];
    _tags = json["tags"] != null ? json["tags"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["category"] = _category;
    map["delCardType"] = _delCardType;
    map["longDesc"] = _longDesc;
    map["shortDesc"] = _shortDesc;
    map["minTeamSize"] = _minTeamSize;
    map["maxTeamSize"] = _maxTeamSize;
    map["tags"] = _tags;
    return map;
  }
}
