// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Map<String, dynamic>> welcomeFromJson(String str) => List<Map<String, dynamic>>.from(json.decode(str).map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v))));

String welcomeToJson(List<Map<String, dynamic>> data) => json.encode(List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))));

class WelcomeClass {
  WelcomeClass({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  String a;
  String b;
  String c;
  String d;

  factory WelcomeClass.fromJson(Map<String, dynamic> json) => WelcomeClass(
    a: json["a"],
    b: json["b"],
    c: json["c"],
    d: json["d"],
  );

  Map<String, dynamic> toJson() => {
    "a": a,
    "b": b,
    "c": c,
    "d": d,
  };
}
