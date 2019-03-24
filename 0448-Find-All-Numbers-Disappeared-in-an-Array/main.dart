// 448. Find All Numbers Disappeared in an Array
// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
/*
Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
Find all the elements of [1, n] inclusive that do not appear in this array.
Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

Example:
Input:
[4,3,2,7,8,2,3,1]
Output:
[5,6]
 */

List<int> findDisappearedNumbers(List<int> nums) {
  List<int> res = [];
  for (int i = 0; i < nums.length; ++i) {
    if (nums[abs(nums[i]) - 1] > 0) {
      nums[abs(nums[i]) - 1] *= -1;
    }
  }
  for (int i = 0; i < nums.length; ++i) {
    if (nums[i] > 0) {
      res.add(i + 1);
    }
  }
  return res;
}

int abs(int num) {
  return num < 0 ? -num : num;
}

void main() {
  List<int> nums = [4, 3, 2, 7, 8, 2, 3, 1];
  print(findDisappearedNumbers(nums));
}
