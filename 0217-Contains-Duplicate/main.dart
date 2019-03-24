// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/\
/*
Given an array of integers, find if the array contains any duplicates.
Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

Example 1:
Input: [1,2,3,1]
Output: true

Example 2:
Input: [1,2,3,4]
Output: false

Example 3:
Input: [1,1,1,3,3,4,3,2,4,2]
Output: true
 */

bool containsDuplicate(List<int> nums) {
  Set<int> records = Set<int>();
  for (int num in nums) {
    if (records.contains(num)) {
      return true;
    } else {
      records.add(num);
    }
  }
  return false;
}

void main() {
  print(containsDuplicate([1, 2, 3, 1]));
  print(containsDuplicate([1, 2, 3, 4]));
  print(containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}
