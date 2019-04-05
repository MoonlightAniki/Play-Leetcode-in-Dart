// 1. Two Sum
// https://leetcode.com/problems/two-sum/
/*
Given an array of integers, return indices of the two numbers such that they add up to a specific target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,
Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
 */

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> records = Map<int, int>();
  for (int i = 0; i < nums.length; ++i) {
    int other = target - nums[i];
    if (records.containsKey(other)) {
      return [records[other], i];
    } else {
      records[nums[i]] = i;
    }
  }
  return [-1, -1];
}

void main() {
  print(twoSum([2, 7, 11, 15], 9));
}
