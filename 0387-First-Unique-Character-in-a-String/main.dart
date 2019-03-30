// 387. First Unique Character in a String
// https://leetcode.com/problems/first-unique-character-in-a-string/
/*
Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

Examples:
s = "leetcode"
return 0.

s = "loveleetcode",
return 2.

Note: You may assume the string contain only lowercase letters.
 */
int firstUniqChar(String s) {
  Map<String, int> freq = Map<String, int>();
  for (int i = 0; i < s.length; ++i) {
    freq[s[i]] = (freq[s[i]] ?? 0) + 1;
  }
  for (int i = 0; i < s.length; ++i) {
    if (freq[s[i]] == 1) {
      return i;
    }
  }
  return -1;
}

void main() {
  print(firstUniqChar('leetcode'));
  print(firstUniqChar('loveleetcode'));
}