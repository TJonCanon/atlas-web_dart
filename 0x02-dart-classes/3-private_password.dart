class Password {
  String _password;

  Password({required this.password});

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumber = false;

    for (int i = 0; i < _password.length; i++) {
      String char = _password[i];
      if (char.toUpperCase() == char && char.toLowerCase() != char) {
        hasUppercase = true;
      } else if (char.toLowerCase() == char && char.toUpperCase() != char) {
        hasLowercase = true;
      } else if (int.tryParse(char) != null) {
        hasNumber = true;
      }
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is $_password';
  }
}