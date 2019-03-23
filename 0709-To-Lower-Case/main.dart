// 0709. To Lower Case
// https://leetcode.com/problems/to-lower-case/
/*
Implement function ToLowerCase() that has a string parameter str, and returns the same string in lowercase.

Example 1:
Input: "Hello"
Output: "hello"

Example 2:
Input: "here"
Output: "here"

Example 3:
Input: "LOVELY"
Output: "lovely"
 */
String toLowerCase(String str) {
  StringBuffer sb = StringBuffer();
  for (int i = 0; i < str.length; ++i) {
    String ch = str[i];
    sb.write(_isUpperCase(ch) ? _toLowerCase(ch) : ch);
  }
  return sb.toString();
}

bool _isUpperCase(String s) {
  return s.codeUnitAt(0) >= 'A'.codeUnitAt(0) &&
      s.codeUnitAt(0) <= 'Z'.codeUnitAt(0);
}

String _toLowerCase(String s) {
  return String.fromCharCode(s.codeUnitAt(0) + 32);
}

void main() {
  print(toLowerCase('Hello'));
  print(toLowerCase('here'));
  print(toLowerCase('LOVELY'));
}
