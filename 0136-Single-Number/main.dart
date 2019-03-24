// 136. Single Number
// https://leetcode.com/problems/single-number/
/*
Given a non-empty array of integers, every element appears twice except for one. Find that single one.

Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

Example 1:
Input: [2,2,1]
Output: 1

Example 2:
Input: [4,1,2,1,2]
Output: 4
 */

int singleNumber(List<int> nums) {
  int res = 0;
  nums.forEach((num) {
    res ^= num;
  });
  return res;
}

void main() {
  List<int> nums = [2, 2, 1];
  print(singleNumber(nums));

  nums = [4, 1, 2, 1, 2];
  print(singleNumber(nums));
}
