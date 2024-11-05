class CategoryModel {
  List<Data>? data;
  String? message;

  CategoryModel({this.data, this.message});

  // Constructor to create CategoryModel from a Map
  CategoryModel.fromMap(Map<String, dynamic> map) {
    if (map['data'] != null) {
      data = List<Data>.from(map['data'].map((v) => Data.fromMap(v)));
    }
    message = map['message'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> mapData = {};
    if (data != null) {
      mapData['data'] = data!.map((v) => v.toMap()).toList();
    }
    mapData['message'] = message;
    return mapData;
  }
}

class Data {
  int? id;
  String? name;

  Data({this.id, this.name});

  // Constructor to create Data from a Map
  Data.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}
