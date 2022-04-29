import 'package:sign_language_interpreter/domain/interpreter/animation_details.dart';

class InterpreterModel {
  final String text;
  final List<AnimationDetails> translation;
  const InterpreterModel({required this.text, required this.translation});

  factory InterpreterModel.fromJson(Map<String, dynamic> json) =>
      InterpreterModel(
        text: json["text"],
        translation: _getSigns(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "translation": translation,
      };
  void printUser() {
    print({
      "text": text,
      "translation": translation,
    });
  }

  static const Map<String, AnimationDetails> _signs = {};

  static List<AnimationDetails> _getSigns(String translation) {
    List<AnimationDetails> list = [];
    List<String> words = translation.split(" ");

    for (String word in words) {
      if (_signs.containsKey(word.trim())) {
        list.add(_signs[word]!);
      }
    }
    return list;
  }
}
