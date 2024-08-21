library chicken_open_ai;

import 'dart:typed_data';

import 'package:chicken_open_ai/model/text_to_speech/audio_output_format.dart';
import 'package:chicken_open_ai/model/text_to_speech/tts_model.dart';
import 'package:chicken_open_ai/model/text_to_speech/voice_option.dart';
import 'package:chicken_open_ai/src/data_source/open_ai_data_source.dart';
import 'package:chicken_open_ai/src/model/mapers/text_to_speech_mappers.dart';

class ChickenOpenAi {
  final OpenAiDataSource dataSource;

  ChickenOpenAi(this.dataSource);

  void init(String apiKey) => dataSource.initApiKey(apiKey);

  Future<Uint8List> textToSpeech(
    String text, {
    TextToSpeechModel model = TextToSpeechModel.tts1,
    VoiceOption voice = VoiceOption.alloy,
    AudioOutputFormat format = AudioOutputFormat.mp3,
    double speed = 1,
  }) =>
      dataSource.getTextToSpeech(
        model: model.value,
        input: text,
        voice: voice.value,
        responseFormat: format.value,
        speed: speed,
      );
}
