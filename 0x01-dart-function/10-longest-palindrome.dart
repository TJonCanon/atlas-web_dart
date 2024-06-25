String longestPalindrome(String s) {
  int length = s.length;
  String longestPalindromeSubstring = '';

  for (int i = 0; i < length; i++) {
    for (int j = i; j < length; j++) {
      String substring = s.substring(i, j + 1);
      if (isPalindrome(substring)) {
        if (substring.length > longestPalindromeSubstring.length) {
          longestPalindromeSubstring = substring;
        }
      }
    }
  }

  return longestPalindromeSubstring.isEmpty ? 'none' : longestPalindromeSubstring;
}

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