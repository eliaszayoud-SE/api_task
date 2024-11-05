class SignUpModel {
  Data? data;
  String? message;

  SignUpModel({this.data, this.message});

  SignUpModel.fromMap(Map<String, dynamic> map) {
    data = map['data'] != null ? Data.fromMap(map['data']) : null;
    message = map['message'];
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'message': message,
    };
  }
}

class Data {
  User? user;
  FcmToken? fcmToken;
  String? accessToken;
  String? tokenType;

  Data({this.user, this.fcmToken, this.accessToken, this.tokenType});

  Data.fromMap(Map<String, dynamic> map) {
    user = map['user'] != null ? User.fromMap(map['user']) : null;
    fcmToken = map['fcm_token'] != null ? FcmToken.fromMap(map['fcm_token']) : null;
    accessToken = map['access_token'];
    tokenType = map['token_type'];
  }

  Map<String, dynamic> toMap() {
    return {
      'user': user?.toMap(),
      'fcm_token': fcmToken?.toMap(),
      'access_token': accessToken,
      'token_type': tokenType,
    };
  }
}

class User {
  String? name;
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;

  User({this.name, this.email, this.updatedAt, this.createdAt, this.id});

  User.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    email = map['email'];
    updatedAt = map['updated_at'];
    createdAt = map['created_at'];
    id = map['id'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'updated_at': updatedAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}

class FcmToken {
  String? fcmToken;

  FcmToken({this.fcmToken});

  FcmToken.fromMap(Map<String, dynamic> map) {
    fcmToken = map['fcm_token'];
  }

  Map<String, dynamic> toMap() {
    return {
      'fcm_token': fcmToken,
    };
  }
}
