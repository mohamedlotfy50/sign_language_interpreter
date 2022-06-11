import 'avatar_animation.dart';

class InterpreterModel {
  final String text;
  final AvatarAnimation translation;
  const InterpreterModel({required this.text, required this.translation});

  factory InterpreterModel.fromJson(Map<String, dynamic> json) =>
      InterpreterModel(
        text: json["text"],
        translation: AvatarAnimation.fromJson(json["translation"]),
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
}
