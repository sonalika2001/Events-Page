/// success : true
/// data : [{"id":1,"name":"Ampersand","type":"Online","description":"This is the description of category 1","cc1Name":"Ampersand CC1","cc1Contact":"9876543210","cc2Name":"Ampersand CC2","cc2Contact":"1234567890"},{"id":2,"name":"Animania","type":"Online","description":"This is the description of category 2","cc1Name":"Animania CC1","cc1Contact":"9876543210","cc2Name":"Animania CC2","cc2Contact":"1234567890"},{"id":3,"name":"EQ-IQ","type":"Online","description":"This is the description of category 3","cc1Name":"EQ-IQ CC","cc1Contact":"9876543210","cc2Name":"EQ-IQ CC2","cc2Contact":"1234567890"},{"id":4,"name":"Dramebaaz","type":"Online","description":"This is the description of category 4","cc1Name":"Dramebaaz CC","cc1Contact":"9876543210","cc2Name":"Dramebaaz CC2","cc2Contact":"1234567890"},{"id":5,"name":"Extreme","type":"Online","description":"This is the description of category 5","cc1Name":"Extreme CC","cc1Contact":"9876543210","cc2Name":"Extreme CC2","cc2Contact":"1234567890"}]

class Category {
  bool _success;
  List<Data1> _data;

  bool get success => _success;
  List<Data1> get data => _data;

  Category({bool success, List<Data1> data}) {
    _success = success;
    _data = data;
  }

  Category.fromJson(dynamic json) {
    _success = json["success"];
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(Data1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["success"] = _success;
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1
/// name : "Ampersand"
/// type : "Online"
/// description : "This is the description of category 1"
/// cc1Name : "Ampersand CC1"
/// cc1Contact : "9876543210"
/// cc2Name : "Ampersand CC2"
/// cc2Contact : "1234567890"

class Data1 {
  int _id;
  String _name;
  String _type;
  String _description;
  String _cc1Name;
  String _cc1Contact;
  String _cc2Name;
  String _cc2Contact;

  int get id => _id;
  String get name => _name;
  String get type => _type;
  String get description => _description;
  String get cc1Name => _cc1Name;
  String get cc1Contact => _cc1Contact;
  String get cc2Name => _cc2Name;
  String get cc2Contact => _cc2Contact;

  Data1(
      {int id,
      String name,
      String type,
      String description,
      String cc1Name,
      String cc1Contact,
      String cc2Name,
      String cc2Contact}) {
    _id = id;
    _name = name;
    _type = type;
    _description = description;
    _cc1Name = cc1Name;
    _cc1Contact = cc1Contact;
    _cc2Name = cc2Name;
    _cc2Contact = cc2Contact;
  }

  Data1.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _type = json["type"];
    _description = json["description"];
    _cc1Name = json["cc1Name"];
    _cc1Contact = json["cc1Contact"];
    _cc2Name = json["cc2Name"];
    _cc2Contact = json["cc2Contact"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    map["type"] = _type;
    map["description"] = _description;
    map["cc1Name"] = _cc1Name;
    map["cc1Contact"] = _cc1Contact;
    map["cc2Name"] = _cc2Name;
    map["cc2Contact"] = _cc2Contact;
    return map;
  }
}
