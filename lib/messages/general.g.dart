// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoundUpdateEvent _$RoundUpdateEventFromJson(Map<String, dynamic> json) =>
    RoundUpdateEvent(
      json['playerRank'] as int,
    );

Map<String, dynamic> _$RoundUpdateEventToJson(RoundUpdateEvent instance) =>
    <String, dynamic>{
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
