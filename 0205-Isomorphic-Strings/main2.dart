// 205. Isomorphic Strings
// https://leetcode.com/problems/isomorphic-strings/
/*
Given two strings s and t, determine if they are isomorphic.
Two strings are isomorphic if the characters in s can be replaced to get t.
All occurrences of a character must be replaced with another character while preserving the order of characters.
No two characters may map to the same character but a character may map to itself.

Example 1:
Input: s = "egg", t = "add"
Output: true

Example 2:
Input: s = "foo", t = "bar"
Output: false

Example 3:
Input: s = "paper", t = "title"
Output: true

Note:
You may assume both s and t have the same length.
 */
bool isIsomorphic(String s, String t) {
  if (s == null && t == null) {
    return true;
  }
  if (s == null || t == null) {
    return false;
  }
  if (s.length != t.length) {
    return false;
  }
  Map<String, int> map1 = Map<String, int>();
  Map<String, int> map2 = Map<String, int>();
  for (int i = 0; i < s.length; ++i) {
    if (map1[s[i]] != map2[t[i]]) {
      return false;
    }
    map1[s[i]] = i + 1;
    map2[t[i]] = i + 1;
  }
  return true;
}

void main() {
  print(isIsomorphic('egg', 'add'));
  print(isIsomorphic('foo', 'bar'));
  print(isIsomorphic('paper', 'title'));
  print(isIsomorphic('moon', 'fool'));
}
