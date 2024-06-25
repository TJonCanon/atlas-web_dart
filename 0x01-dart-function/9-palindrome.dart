bool isPalindrome(String s) {
  int length = s.length;

  if (length < 3) {
    return false;
  }

  for (int i = 0; i < length ~/ 2; i++) {
    if (s[i] != s[length - 1 - i]) {
      return false;
    }
  }

  return true;
}