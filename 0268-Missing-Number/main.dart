// 268. Missing Number
// https://leetcode.com/problems/missing-number/
/*
Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

Example 1:
Input: [3,0,1]
Output: 2

Example 2:
Input: [9,6,4,2,3,5,7,0,1]
Output: 8

Note:
Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
 */
int missingNumber(List<int> nums) {
  int n = nums.length;
  int sum = 0;
  nums.forEach((num) {
    sum += num;
  });
  return n * (n + 1) ~/ 2 - sum;
}

void main() {
  print(missingNumber([3, 0, 1]));
  print(missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]));
}
