class Password {
  String _password = '';

  @override
  String toString() {
    return 'Your Password is: $_password';
  }

  bool isValid() {
    return _password.length >= 8 &&
        _password.length <= 16 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'[0-9]'));
  }

  Password({required String password}) {
    _password = password;
  }

  String get password {
    return _password;
  }

  set password(String newPassword) {
    _password = newPassword;
  }
}