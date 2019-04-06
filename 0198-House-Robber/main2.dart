// 198. House Robber
// https://leetcode.com/problems/house-robber/
/*
You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint
stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police
if two adjacent houses were broken into on the same night.
Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob
tonight without alerting the police.

Example 1:
Input: [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
             Total amount you can rob = 1 + 3 = 4.

Example 2:
Input: [2,7,9,3,1]
Output: 12
Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
             Total amount you can rob = 2 + 9 + 1 = 12.
 */

import 'dart:math';

class Solution {
  List<int> _memo;

  int rob(List<int> nums) {
    if (nums == null || nums.isEmpty) {
      return 0;
    }
    _memo = List<int>(nums.length);
    return _tryRob(nums, nums.length - 1);
  }

  // 考虑从nums[0...index]范围内偷取财物的最大价值
  int _tryRob(List<int> nums, int index) {
    if (index < 0) {
      return 0;
    }
    if (_memo[index] != null) {
      return _memo[index];
    }
    _memo[index] =
        max(_tryRob(nums, index - 2) + nums[index], _tryRob(nums, index - 1));
    return _memo[index];
  }
}

void main() {
  Solution solution = Solution();
  print(solution.rob([1, 2, 3, 1]));
  print(solution.rob([2, 7, 9, 3, 1]));
}
