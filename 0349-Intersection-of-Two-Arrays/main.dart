// 349. Intersection of Two Arrays
// https://leetcode.com/problems/intersection-of-two-arrays/
/*
Given two arrays, write a function to compute their intersection.

Example 1:
Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2]

Example 2:
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [9,4]

Note:
Each element in the result must be unique.
The result can be in any order.
 */

List<int> intersection(List<int> nums1, List<int> nums2) {
  Set<int> set1 = nums1.toSet();
  Set<int> resultSet = Set<int>();
  nums2.forEach((num) {
    if (set1.contains(num)) {
      resultSet.add(num);
    }
  });
  return resultSet.toList();
}

void main() {
  List<int> nums1 = [1, 2, 2, 1];
  List<int> nums2 = [2, 2];
  print(intersection(nums1, nums2));

  nums1 = [4, 9, 5];
  nums2 = [9, 4, 9, 8, 4];
  print(intersection(nums1, nums2));
}
