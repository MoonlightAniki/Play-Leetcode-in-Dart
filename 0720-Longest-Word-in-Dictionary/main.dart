// 720. Longest Word in Dictionary
// https://leetcode.com/problems/longest-word-in-dictionary/
/*
Given a list of strings words representing an English Dictionary, find the longest word in words that can be built one character at
a time by other words in words. If there is more than one possible answer, return the longest word with the smallest lexicographical order.
If there is no answer, return the empty string.

Example 1:
Input:
words = ["w","wo","wor","worl", "world"]
Output: "world"
Explanation:
The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".

Example 2:
Input:
words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
Output: "apple"
Explanation:
Both "apply" and "apple" can be built from other words in the dictionary. However, "apple" is lexicographically smaller than "apply".

Note:
All the strings in the input will only contain lowercase letters.
The length of words will be in the range [1, 1000].
The length of words[i] will be in the range [1, 30].
 */

String longestWord(List<String> words) {
  String res = '';
  if (words == null || words.isEmpty) {
    return res;
  }
  words.sort((a, b) {
    if (a.length == b.length) {
      return a.compareTo(b);
    }
    return a.length - b.length;
  });
  Set<String> records = words.toSet();
  for (String word in words) {
    if (word.length > 1 &&
        records.contains(word.substring(0, word.length - 1)) &&
        word.length > res.length) {
      res = word;
    }
  }
  return res;
}

void main() {
  print(longestWord(["w", "wo", "wor", "worl", "world"]));
  print(longestWord(["a", "banana", "app", "appl", "ap", "apply", "apple"]));
}
