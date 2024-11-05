class ProductModel {
  List<ProductData>? data;
  String? message;

  ProductModel({this.data, this.message});

  // Constructor from a Map
  ProductModel.fromMap(Map<String, dynamic> map) {
    if (map['data'] != null) {
      data = List<ProductData>.from(map['data'].map((v) => ProductData.fromMap(v)));
    }
    message = map['message'];
  }

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'data': data?.map((v) => v.toMap()).toList(),
      'message': message,
    };
  }
}

class ProductData {
  int? id;
  String? name;
  SubCategory? subCategory;
  String? image;
  int? price;
  int? evaluation;
  int? discount;

  ProductData({
    this.id,
    this.name,
    this.subCategory,
    this.image,
    this.price,
    this.evaluation,
    this.discount,
  });

  // Constructor from a Map
  ProductData.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    subCategory = map['sub-category'] != null
        ? SubCategory.fromMap(map['sub-category'])
        : null;
    image = map['image'];
    price = map['price'];
    evaluation = map['evaluation'];
    discount = map['discount'];
  }

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'sub-category': subCategory?.toMap(),
      'image': image,
      'price': price,
      'evaluation': evaluation,
      'discount': discount,
    };
  }
}

class SubCategory {
  int? id;
  String? name;
  Category? category;

  SubCategory({this.id, this.name, this.category});

  // Constructor from a Map
  SubCategory.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    category = map['category'] != null
        ? Category.fromMap(map['category'])
        : null;
  }

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category?.toMap(),
    };
  }
}

class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  // Constructor from a Map
  Category.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}
