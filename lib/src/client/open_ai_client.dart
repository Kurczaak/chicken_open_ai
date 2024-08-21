import 'dart:convert';
import 'dart:typed_data';

import 'package:chicken_open_ai/src/model/request/text_to_speech_request.dart';
import 'package:http/http.dart';

class OpenAIClient {
  final Client client;
  late String apiKey;

  static const _ttsPath = '/v1/audio/speech';
  static const _baseUrl = 'https://api.openai.com';

  OpenAIClient(
    this.client,
  );

  void init(String apiKey) => this.apiKey = apiKey;

  Future<Uint8List> getTextToSpeech(TextToSpeechRequest request) async {
    final result = await client.post(
      Uri.parse('$_baseUrl/$_ttsPath'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(request.toJson()),
    );
    return result.bodyBytes;
  }
}
