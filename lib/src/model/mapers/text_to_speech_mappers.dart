import 'package:chicken_open_ai/model/text_to_speech/audio_output_format.dart';
import 'package:chicken_open_ai/model/text_to_speech/tts_model.dart';
import 'package:chicken_open_ai/model/text_to_speech/voice_option.dart';

extension VoiceOptionMapper on VoiceOption {
  String get value => switch (this) {
        VoiceOption.alloy => 'alloy',
        VoiceOption.echo => 'echo',
        VoiceOption.fable => 'fable',
        VoiceOption.nova => 'nova',
        VoiceOption.onyx => 'onyx',
        VoiceOption.shimmer => 'shimmer',
      };
}

extension AudioOutputFormatMapper on AudioOutputFormat {
  String get value => switch (this) {
        AudioOutputFormat.aac => 'aac',
        AudioOutputFormat.flac => 'flac',
        AudioOutputFormat.mp3 => 'mp3',
        AudioOutputFormat.opus => 'opus',
        AudioOutputFormat.pcm => 'pcm',
        AudioOutputFormat.wav => 'wav',
      };
}

extension TextToSpeechModelMapper on TextToSpeechModel {
  String get value => switch (this) {
        TextToSpeechModel.tts1 => 'tts-1',
        TextToSpeechModel.tts1Hd => 'tts-1-hd',
      };
}
