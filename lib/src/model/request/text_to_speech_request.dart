import 'package:json_annotation/json_annotation.dart';

part 'text_to_speech_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TextToSpeechRequest {
  final String model;
  final String input;
  final String voice;
  final String? responseFormat;
  final double? speed;

  TextToSpeechRequest({
    required this.model,
    required this.input,
    required this.voice,
    this.responseFormat,
    this.speed,
  });

  factory TextToSpeechRequest.fromJson(Map<String, dynamic> json) =>
      _$TextToSpeechRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TextToSpeechRequestToJson(this);
}
