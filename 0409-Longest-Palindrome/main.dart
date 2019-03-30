// 409. Longest Palindrome
// https://leetcode.com/problems/longest-palindrome/
/*
Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
This is case sensitive, for example "Aa" is not considered a palindrome here.

Note:
Assume the length of given string will not exceed 1,010.

Example:
Input:
"abccccdd"
Output:
7

Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.
 */

int longestPalindrome(String s) {
  Map<String, int> freq = Map<String, int>();
  for (int i = 0; i < s.length; ++i) {
    freq[s[i]] = (freq[s[i]] ?? 0) + 1;
  }
  int result = 0;
  bool hasOdd = false;
  freq.forEach((key, value) {
    if (value.isEven) {
      result += value;
    } else {
      hasOdd = true;
      result += value - 1;
    }
  });
  if (hasOdd) {
    ++result;
  }
  return result;
}

void main() {
  print(longestPalindrome('abccccdd'));
}