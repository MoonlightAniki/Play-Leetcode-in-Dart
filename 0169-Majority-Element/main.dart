// 169. Majority Element
// https://leetcode.com/problems/majority-element/
/*
Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
You may assume that the array is non-empty and the majority element always exist in the array.

Example 1:
Input: [3,2,3]
Output: 3

Example 2:
Input: [2,2,1,1,1,2,2]
Output: 2
 */

int majorityElement(List<int> nums) {
  Map<int, int> freq = Map<int, int>();
  for (int num in nums) {
    if (freq.containsKey(num)) {
      ++freq[num];
    } else {
      freq[num] = 1;
    }
    if (freq[num] > nums.length ~/ 2) {
      return num;
    }
  }
  return null;
}

void main() {
  print(majorityElement([3, 2, 3]));
  print(majorityElement([2, 2, 1, 1, 1, 2, 2]));
}
