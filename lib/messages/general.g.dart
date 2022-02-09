// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchUpdateEvent _$MatchUpdateEventFromJson(Map<String, dynamic> json) =>
    MatchUpdateEvent(
      json['currentRound'] as int,
      json['numberOfRounds'] as int,
      $enumDecode(_$GameStateEnumMap, json['gameState']),
      $enumDecode(_$PlayerStateEnumMap, json['playerState']),
    );

Map<String, dynamic> _$MatchUpdateEventToJson(MatchUpdateEvent instance) =>
    <String, dynamic>{
      'currentRound': instance.currentRound,
      'numberOfRounds': instance.numberOfRounds,
      'gameState': _$GameStateEnumMap[instance.gameState],
      'playerState': _$PlayerStateEnumMap[instance.playerState],
    };

const _$GameStateEnumMap = {
  GameState.Lobby: 'Lobby',
  GameState.PreGame: 'PreGame',
  GameState.InGame: 'InGame',
  GameState.PostGame: 'PostGame',
};

const _$PlayerStateEnumMap = {
  PlayerState.None: 'None',
  PlayerState.Joined: 'Joined',
  PlayerState.Waiting: 'Waiting',
  PlayerState.Lost: 'Lost',
  PlayerState.quit: 'Quit',
  PlayerState.winning: 'Winning',
};

RoundUpdateEvent _$RoundUpdateEventFromJson(Map<String, dynamic> json) =>
    RoundUpdateEvent(
      json['playerRank'] as int,
      json['secondsRemaining'] as int,
    );

Map<String, dynamic> _$RoundUpdateEventToJson(RoundUpdateEvent instance) =>
    <String, dynamic>{
      'secondsRemaining': instance.secondsRemaining,
      'playerRank': instance.playerRank,
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
  MessageType.RoundUpdate: 'RoundUpdate',
};
