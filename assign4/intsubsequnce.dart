void main() {
  List<int> numbers = [45, 2, 3, 4, 5, 612, 613, 614, 615, 616, 36, 2, 1];
  List<int> longestSubsequence = LongestSubsequence(numbers);
  print(longestSubsequence);
}

List<int> LongestSubsequence(List<int> numbers) {
  List<int> currentSubsequence = [numbers[0]];
  List<int> longestSubsequence = [numbers[0]];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] == currentSubsequence.last + 1) {
      currentSubsequence.add(numbers[i]);
      if (currentSubsequence.length > longestSubsequence.length) {
        longestSubsequence = List.from(currentSubsequence);
      }
    } else {
      currentSubsequence = [numbers[i]];
    }
  }

  return longestSubsequence;
}
