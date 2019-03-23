// 922. Sort Array By Parity II
// https://leetcode.com/problems/sort-array-by-parity-ii/
/*
Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.
Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.
You may return any answer array that satisfies this condition.

Example 1:
Input: [4,2,5,7]
Output: [4,5,2,7]
Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.

Note:
2 <= A.length <= 20000
A.length % 2 == 0
0 <= A[i] <= 1000
 */

List<int> sortArrayByParityII(List<int> A) {
  if (A == null) {
    return A;
  }
  int i = 0;
  int j = 1;
  while (true) {
    while (i < A.length && A[i].isEven) {
      i += 2;
    }
    while (j < A.length && A[j].isOdd) {
      j += 2;
    }
    if (i >= A.length || j >= A.length) {
      break;
    }
    int temp = A[i];
    A[i] = A[j];
    A[j] = temp;
    i += 2;
    j += 2;
  }
  return A;
}

void main() {
  print(sortArrayByParityII([4, 2, 5, 7]));
}
