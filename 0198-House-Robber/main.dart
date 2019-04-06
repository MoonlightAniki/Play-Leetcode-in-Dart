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

int rob(List<int> nums) {
  if (nums == null || nums.isEmpty) {
    return 0;
  }
  int n = nums.length;
  if (n == 1) {
    return nums[0];
  }
  List<int> dp = List<int>(n); //dp[i]表示考虑从nums[i...n-1]范围内偷取财物的最大价值,dp[0]就是问题的解
  dp[n - 1] = nums[n - 1];
  dp[n - 2] = max(nums[n - 1], nums[n - 2]);
  for (int i = n - 3; i >= 0; --i) {
    dp[i] = max(nums[i] + dp[i + 2], dp[i + 1]);
  }
  return dp[0];
}

void main() {
  print(rob([1, 2, 3, 1]));
  print(rob([2, 7, 9, 3, 1]));
}
