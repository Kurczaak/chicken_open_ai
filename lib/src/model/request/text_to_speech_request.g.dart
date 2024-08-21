// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_to_speech_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextToSpeechRequest _$TextToSpeechRequestFromJson(Map<String, dynamic> json) =>
    TextToSpeechRequest(
      model: json['model'] as String,
      input: json['input'] as String,
      voice: json['voice'] as String,
      responseFormat: json['response_format'] as String?,
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TextToSpeechRequestToJson(
        TextToSpeechRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'input': instance.input,
      'voice': instance.voice,
      'response_format': instance.responseFormat,
      'speed': instance.speed,
    };
