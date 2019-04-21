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
  Map<String, String> sMap = Map<String, String>();
  Map<String, String> tMap = Map<String, String>();
  for (int i = 0; i < s.length; ++i) {
    String sChar = s[i];
    String tChar = t[i];
    if (sMap[sChar] == null && tMap[tChar] == null) {
      sMap[sChar] = tChar;
      tMap[tChar] = sChar;
    } else {
      if (sMap[sChar] != tChar || tMap[tChar] != sChar) {
        return false;
      }
    }
  }
  return true;
}

void main() {
  print(isIsomorphic('egg', 'add'));
  print(isIsomorphic('foo', 'bar'));
  print(isIsomorphic('paper', 'title'));
  print(isIsomorphic('moon', 'fool'));
}
