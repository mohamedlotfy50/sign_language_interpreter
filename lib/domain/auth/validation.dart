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

  static bool isValidPhone(String? value) {
    const List<String> _phoneStarts = ['010', '011', '012', '015'];
    if (value!.length == 11) {
      if (_phoneStarts.contains(value.substring(0, 3))) {
        return true;
      }

      return false;
    }
    return false;
  }
}
