// 53. Maximum Subarray
// https://leetcode.com/problems/maximum-subarray/
/*
Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

Example:
Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.

Follow up:
If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
 */

import 'dart:math';

int maxSubArray(List<int> nums) {
  if (nums == null || nums.isEmpty) {
    return 0;
  }
  int maxEndingHere = nums[0];
  int maxSoFar = nums[0];
  for (int i = 1; i < nums.length; ++i) {
    maxEndingHere = max(maxEndingHere + nums[i], nums[i]);
    maxSoFar = max(maxSoFar, maxEndingHere);
  }
  return maxSoFar;
}

void main() {
  print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
}
