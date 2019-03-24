// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/
/*
Given two strings s and t , write a function to determine if t is an anagram of s.

Example 1:
Input: s = "anagram", t = "nagaram"
Output: true

Example 2:
Input: s = "rat", t = "car"
Output: false

Note:
You may assume the string contains only lowercase alphabets.

Follow up:
What if the inputs contain unicode characters? How would you adapt your solution to such case?
 */

bool isAnagram(String s, String t) {
  if (s == null && t == null) {
    return true;
  }
  if (s == null || t == null) {
    return false;
  }
  if (s.length != t.length) {
    return false;
  }
  Map<String, int> freq = {};
  for (int i = 0; i < s.length; ++i) {
    if (freq.containsKey(s[i])) {
      ++freq[s[i]];
    } else {
      freq[s[i]] = 1;
    }
  }
  for (int i = 0; i < t.length; ++i) {
    if (freq.containsKey(t[i])) {
      if (--freq[t[i]] < 0) {
        return false;
      }
    } else {
      return false;
    }
  }
  return true;
}

void main() {
  print(isAnagram('anagram', 'nagaram'));
  print(isAnagram('rat', 'car'));
}
