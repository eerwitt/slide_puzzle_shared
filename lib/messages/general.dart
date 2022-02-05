import 'package:json_annotation/json_annotation.dart';

import 'dart:convert';

part 'general.g.dart';

enum MessageType {
  @JsonValue("CreatePlayer")
  CreatePlayer,
  @JsonValue("FindMatch")
  FindMatch,
  @JsonValue("MoveTile")
  MoveTile,
  @JsonValue("PuzzleSetup")
  PuzzleSetup,
}

@JsonSerializable()
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

  factory BaseMessage.fromJson(Map<String, dynamic> json) =>
      _$BaseMessageFromJson(json);

  Map<String, dynamic> toJson() => _$BaseMessageToJson(this);
}
