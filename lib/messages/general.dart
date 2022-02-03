import 'package:json_annotation/json_annotation.dart';

import 'dart:convert';

enum MessageType {
  @JsonValue("CreatePlayer")
  CreatePlayer,
  @JsonValue("FindMatch")
  FindMatch,
  @JsonValue("MoveTile")
  MoveTile,
}

class BaseMessage {
  BaseMessage({
    required this.id,
    required this.messageType,
    required this.payload,
    required this.valid,
  });

  final int id;
  final MessageType messageType;
  final Map<String, dynamic> payload;
  final bool valid;

  factory BaseMessage.fromRawJson(String str) =>
      BaseMessage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseMessage.fromJson(Map<String, dynamic> json) => BaseMessage(
        id: json["id"],
        messageType: json["messageType"],
        payload: json["payload"],
        valid: json["valid"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "messageType": messageType,
        "payload": payload,
        "valid": valid,
      };
}
