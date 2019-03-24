// 485. Max Consecutive Ones
// https://leetcode.com/problems/max-consecutive-ones/
/*
Given a binary array, find the maximum number of consecutive 1s in this array.

Example 1:
Input: [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s.
    The maximum number of consecutive 1s is 3.

Note:
The input array will only contain 0 and 1.
The length of input array is a positive integer and will not exceed 10,000
 */

import 'dart:math';

int findMaxConsecutiveOnes(List<int> nums) {
  int res = 0;
  if (nums == null) {
    return res;
  }
  int count = 0;
  for (int i = 0; i < nums.length; ++i) {
    if (nums[i] == 1) {
      ++count;
      res = max(res, count);
    } else {
      count = 0;
    }
  }
  return res;
}

void main() {
  List<int> nums = [1, 1, 0, 1, 1, 1];
  print(findMaxConsecutiveOnes(nums));
}
