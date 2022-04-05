class InterpreterModel {
  final String text;
  final List<String> translation;
  const InterpreterModel({required this.text, required this.translation});

  factory InterpreterModel.fromJson(Map<String, dynamic> json) =>
      InterpreterModel(
          text: json["text"],
          translation: (json["translation"] as String).split(" "));

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
