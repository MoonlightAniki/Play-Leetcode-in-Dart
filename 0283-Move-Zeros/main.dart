// 283. Move Zeroes
// https://leetcode.com/problems/move-zeroes/
/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:
Input: [0,1,0,3,12]
Output: [1,3,12,0,0]

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.
 */

void moveZeroes(List<int> nums) {
  if (nums == null) {
    return;
  }
  int j = 0;
  for (int i = 0; i < nums.length; ++i) {
    if (nums[i] != 0) {
      if (i != j) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
      }
      ++j;
    }
  }
}

void main() {
  List<int> nums = [0, 1, 0, 3, 12];
  moveZeroes(nums);
  print(nums);

  nums = [0, 0, 1, 2, 3];
  moveZeroes(nums);
  print(nums);
}
