// 344. Reverse String
// https://leetcode.com/problems/reverse-string/
/*
Write a function that reverses a string. The input string is given as an array of characters char[].
Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
You may assume all the characters consist of printable ascii characters.

Example 1:
Input: ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]

Example 2:
Input: ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]
 */

void reverseString(List<String> s) {
  if (s == null) {
    return;
  }
  for (int i = 0, j = s.length - 1; i < j; ++i, --j) {
    String temp = s[i];
    s[i] = s[j];
    s[j] = temp;
  }
}

void main() {
  List<String> s = ['h', 'e', 'l', 'l', 'o'];
  reverseString(s);
  print(s);

  s = ['H', 'a', 'n', 'n', 'a', 'h'];
  reverseString(s);
  print(s);
}
