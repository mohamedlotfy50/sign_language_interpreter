
class Validator {
  static bool isValidName(String? value) {
    if (value!.isEmpty || value.length < 4) {
      return false;
    }
    return true;
  }

  static bool isValidEmail(String? value) {
    if (value!.isEmpty ||
        RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+\.[a-zA-z]+$').hasMatch(value)) {
      return false;
    }
    return true;
  }

  static bool isValidPassword(String? value) {
    if (value!.length < 7) {
      return false;
    }
    return true;
  }
}

