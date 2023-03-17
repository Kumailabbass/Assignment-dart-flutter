void main(List<String> args) {
  if (isPalindrome("raceca")) {
    print("Palindrome");
  } else {
    print("Not Palindrome");
  }
}

bool isPalindrome(String input) {
  for (var i = 0; i < input.length; i++) {
    if (input[i] != input[input.length - i - 1]) {
      return false;
    }
  }
  return true;
}
