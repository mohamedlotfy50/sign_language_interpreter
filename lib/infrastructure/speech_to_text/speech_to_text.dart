import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextHelper {
  SpeechToText speechToText = SpeechToText();

  Future<void> _speechInitialier() async {
    await speechToText.initialize(onError: _onError, onStatus: _onStatus);
  }

  bool isAvilalbe() => speechToText.isAvailable;

  Future<void> startListening() async {
    if (!isAvilalbe()) {
      await _speechInitialier();
    }
    await speechToText.listen(
      onResult: _onResult,
    );
  }

  Future<void> stopListening() async {
    await speechToText.stop();
  }

  Future<void> cancelListening() async {
    await speechToText.cancel();
  }

  void _onResult(SpeechRecognitionResult result) {
    print(result.recognizedWords);
  }

  void _onError(SpeechRecognitionError error) {
    print(error);
  }

  void _onStatus(String status) {
    print(status);
  }
}
