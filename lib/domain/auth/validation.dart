class Validator {
  static bool isValidName(String? value) {
    if (value!.isEmpty || value.length < 4) {
      return false;
    }
    return true;
  }

  static bool isValidEmail(String? value) {
    if (RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)$")
        .hasMatch(value!)) {
      return true;
    }
    return false;
  }

  static bool isValidPassword(String? value) {
    if (RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(value!)) {
      return true;
    }
    return false;
  }
}
