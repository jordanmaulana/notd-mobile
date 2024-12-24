import 'dart:convert';

class Tag {
  String name;
  int count;

  Tag({
    required this.name,
    required this.count,
  });

  factory Tag.fromRawJson(String str) => Tag.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "count": count,
      };
}
