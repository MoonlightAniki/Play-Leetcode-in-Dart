// 171. Excel Sheet Column Number
// https://leetcode.com/problems/excel-sheet-column-number/
/*
Given a column title as appear in an Excel sheet, return its corresponding column number.

For example:

    A -> 1
    B -> 2
    C -> 3
    ...
    Z -> 26
    AA -> 27
    AB -> 28
    ...

Example 1:
Input: "A"
Output: 1

Example 2:
Input: "AB"
Output: 28

Example 3:
Input: "ZY"
Output: 701

 */

int titleToNumber(String s) {
  int result = 0;
  for (int i = 0; i < s.length; ++i) {
    result = result * 26 + (s.codeUnitAt(i) - 65 + 1);
  }
  return result;
}

void main() {
  print(titleToNumber('A'));
  print(titleToNumber('AB'));
  print(titleToNumber('ZY'));
}