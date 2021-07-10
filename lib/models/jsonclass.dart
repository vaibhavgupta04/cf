// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));
String welcomeToJson(Welcome data, welcome) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.status,
    required this.result,
  });

  String status;
  List<Result> result;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"] as String,
        result: List<Result>.from(json["result"].map((x) => Result.fromJson(x)))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.id,
    required this.name,
    required this.type,
    required this.phase,
    required this.frozen,
    required this.durationSeconds,
    required this.startTimeSeconds,
    required this.relativeTimeSeconds,
  });

  int id;
  String name;
  String type;
  String phase;
  bool frozen;
  int durationSeconds;
  int startTimeSeconds;
  int relativeTimeSeconds;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"] as int,
        name: json["name"] as String,
        type: json["type"] as String,
        phase: json["phase"] as String,
        frozen: json["frozen"] as bool,
        durationSeconds: json["durationSeconds"] as int,
        startTimeSeconds: json["startTimeSeconds"] as int,
        relativeTimeSeconds: json["relativeTimeSeconds"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "phase": phase,
        "frozen": frozen,
        "durationSeconds": durationSeconds,
        "startTimeSeconds": startTimeSeconds,
        "relativeTimeSeconds": relativeTimeSeconds,
      };
}
