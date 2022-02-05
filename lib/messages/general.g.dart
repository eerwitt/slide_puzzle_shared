// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
  MessageType.MoveTile: 'MoveTile',
  MessageType.PuzzleSetup: 'PuzzleSetup',
};
