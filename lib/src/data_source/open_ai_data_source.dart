import 'dart:typed_data';

import 'package:chicken_open_ai/src/client/open_ai_client.dart';
import 'package:chicken_open_ai/src/model/request/text_to_speech_request.dart';

class OpenAiDataSource {
  final OpenAIClient client;

  OpenAiDataSource(this.client);

  void initApiKey(String apiKey) => client.init(apiKey);

  Future<Uint8List> getTextToSpeech({
    required String model,
    required String input,
    required String voice,
    String? responseFormat,
    double? speed,
  }) =>
      client.getTextToSpeech(TextToSpeechRequest(
          model: model,
          input: input,
          voice: voice,
          responseFormat: responseFormat,
          speed: speed));
}
