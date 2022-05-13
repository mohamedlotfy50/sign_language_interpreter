class InterpreterValidator {
  static bool isUrl(String input) {
    if (RegExp(
            r'[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)')
        .hasMatch(input)) {
      return true;
    }
    return false;
  }
}
