// 66. Plus One
// https://leetcode.com/problems/plus-one/
/*
Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
You may assume the integer does not contain any leading zero, except the number 0 itself.

Example 1:
Input: [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.

Example 2:
Input: [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
 */
List<int> plusOne(List<int> digits) {
  if (digits == null || digits.isEmpty) {
    return digits;
  }
  int carry = 1;
  for (int i = digits.length - 1; i >= 0; --i) {
    if (digits[i] + carry != 10) {
      ++digits[i];
      carry = 0;
      break;
    }
    digits[i] = 0;
  }
  if (carry != 0) {
    digits.insert(0, carry);
  }
  return digits;
}

void main() {
  print(plusOne([1, 2, 3]));
  print(plusOne([9, 9, 9]));
}
