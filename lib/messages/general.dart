import 'package:json_annotation/json_annotation.dart';

import 'package:equatable/equatable.dart';
import 'dart:convert';

part 'general.g.dart';

enum GameState {
  @JsonValue("Lobby")
  Lobby,
  @JsonValue("PreGame")
  PreGame,
  @JsonValue("InGame")
  InGame,
  @JsonValue("PostGame")
  PostGame,
}

enum PlayerState {
  @JsonValue("None")
  None,
  @JsonValue("Joined")
  Joined,
  @JsonValue("Waiting")
  Waiting,
  @JsonValue("Lost")
  Lost,
  @JsonValue("Quit")
  quit,
  @JsonValue("Winning")
  winning
}

@JsonSerializable()
class RoundUpdateEvent extends Equatable {
  const RoundUpdateEvent(
      this.playerRank, this.secondsRemaining, this.gameState, this.playerState);

  final int playerRank;
  final int secondsRemaining;
  final GameState gameState;
  final PlayerState playerState;

  @override
  List<Object> get props =>
      [playerRank, secondsRemaining, gameState, playerState];

  factory RoundUpdateEvent.fromRawJson(String str) =>
      RoundUpdateEvent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RoundUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$RoundUpdateEventFromJson(json);

  Map<String, dynamic> toJson() => _$RoundUpdateEventToJson(this);
}

enum MessageType {
  @JsonValue("CreatePlayer")
  CreatePlayer,
  @JsonValue("FindMatch")
  FindMatch,
  @JsonValue("TileTapped")
  TileTapped,
  @JsonValue("PuzzleSetup")
  PuzzleSetup,
  @JsonValue("RoundUpdate")
  RoundUpdate,
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
