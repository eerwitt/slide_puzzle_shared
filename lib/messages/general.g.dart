// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthCheckEvent _$HealthCheckEventFromJson(Map<String, dynamic> json) =>
    HealthCheckEvent();

Map<String, dynamic> _$HealthCheckEventToJson(HealthCheckEvent instance) =>
    <String, dynamic>{};

MatchUpdateEvent _$MatchUpdateEventFromJson(Map<String, dynamic> json) =>
    MatchUpdateEvent(
      json['currentRound'] as int,
      json['numberOfRounds'] as int,
      json['secondsRemainingInCurrentState'] as int,
      json['playersConnected'] as int,
      $enumDecode(_$GameStateEnumMap, json['gameState']),
      $enumDecode(_$PlayerStateEnumMap, json['playerState']),
    );

Map<String, dynamic> _$MatchUpdateEventToJson(MatchUpdateEvent instance) =>
    <String, dynamic>{
      'currentRound': instance.currentRound,
      'numberOfRounds': instance.numberOfRounds,
      'secondsRemainingInCurrentState': instance.secondsRemainingInCurrentState,
      'playersConnected': instance.playersConnected,
      'gameState': _$GameStateEnumMap[instance.gameState],
      'playerState': _$PlayerStateEnumMap[instance.playerState],
    };

const _$GameStateEnumMap = {
  GameState.Lobby: 'Lobby',
  GameState.PreGame: 'PreGame',
  GameState.InGame: 'InGame',
  GameState.PostGame: 'PostGame',
  GameState.GameOver: 'GameOver',
};

const _$PlayerStateEnumMap = {
  PlayerState.None: 'None',
  PlayerState.Connecting: 'Connecting',
  PlayerState.Disconnecting: 'Disconnecting',
  PlayerState.Joined: 'Joined',
  PlayerState.Waiting: 'Waiting',
  PlayerState.Lost: 'Lost',
  PlayerState.Quit: 'Quit',
  PlayerState.Winning: 'Winning',
  PlayerState.Won: 'Won',
};

RoundUpdateEvent _$RoundUpdateEventFromJson(Map<String, dynamic> json) =>
    RoundUpdateEvent(
      json['playerRank'] as int,
      json['currentScore'] as int,
      json['secondsRemaining'] as int,
    );

Map<String, dynamic> _$RoundUpdateEventToJson(RoundUpdateEvent instance) =>
    <String, dynamic>{
      'secondsRemaining': instance.secondsRemaining,
      'playerRank': instance.playerRank,
      'currentScore': instance.currentScore,
    };

BaseMessage _$BaseMessageFromJson(Map<String, dynamic> json) => BaseMessage(
      id: json['id'] as int,
      messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
      payload: json['payload'] as Map<String, dynamic>,
      valid: json['valid'] as bool,
    );

Map<String, dynamic> _$BaseMessageToJson(BaseMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'messageType': _$MessageTypeEnumMap[instance.messageType],
      'payload': instance.payload,
      'valid': instance.valid,
    };

const _$MessageTypeEnumMap = {
  MessageType.CreatePlayer: 'CreatePlayer',
  MessageType.FindMatch: 'FindMatch',
  MessageType.TileTapped: 'TileTapped',
  MessageType.PuzzleSetup: 'PuzzleSetup',
  MessageType.MatchUpdate: 'MatchUpdate',
  MessageType.RoundUpdate: 'RoundUpdate',
  MessageType.HealthCheck: 'HealthCheck',
};
