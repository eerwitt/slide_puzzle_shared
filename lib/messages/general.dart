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

enum MessageType {
  @JsonValue("CreatePlayer")
  CreatePlayer,
  @JsonValue("FindMatch")
  FindMatch,
  @JsonValue("TileTapped")
  TileTapped,
  @JsonValue("PuzzleSetup")
  PuzzleSetup,
  @JsonValue("MatchUpdate")
  MatchUpdate,
  @JsonValue("RoundUpdate")
  RoundUpdate,
}

@JsonSerializable()
class MatchUpdateEvent extends Equatable {
  const MatchUpdateEvent(
      this.currentRound, this.numberOfRounds, this.gameState, this.playerState);

  final int currentRound;
  final int numberOfRounds;
  final GameState gameState;
  final PlayerState playerState;

  @override
  List<Object> get props => [
        currentRound,
        numberOfRounds,
        gameState,
        playerState,
      ];

  factory MatchUpdateEvent.fromRawJson(String str) =>
      MatchUpdateEvent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MatchUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$MatchUpdateEventFromJson(json);

  Map<String, dynamic> toJson() => _$MatchUpdateEventToJson(this);
}

@JsonSerializable()
class RoundUpdateEvent extends Equatable {
  const RoundUpdateEvent(this.playerRank, this.secondsRemaining);

  final int secondsRemaining;
  final int playerRank;

  @override
  List<Object> get props => [
        playerRank,
        secondsRemaining,
      ];

  factory RoundUpdateEvent.fromRawJson(String str) =>
      RoundUpdateEvent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RoundUpdateEvent.fromJson(Map<String, dynamic> json) =>
      _$RoundUpdateEventFromJson(json);

  Map<String, dynamic> toJson() => _$RoundUpdateEventToJson(this);
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
