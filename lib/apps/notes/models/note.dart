import 'dart:convert';

class Note {
  String id;
  String content;
  bool isPrivate;
  String userId;
  DateTime createdAt;
  User user;

  Note({
    required this.id,
    required this.content,
    required this.isPrivate,
    required this.userId,
    required this.createdAt,
    required this.user,
  });

  factory Note.fromRawJson(String str) => Note.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        id: json["id"],
        content: json["content"],
        isPrivate: json["isPrivate"],
        userId: json["userId"],
        createdAt: DateTime.parse(json["createdAt"]),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "isPrivate": isPrivate,
        "userId": userId,
        "createdAt": createdAt.toIso8601String(),
        "user": user.toJson(),
      };
}

class User {
  String id;
  String name;

  User({
    required this.id,
    required this.name,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
