// 38. Count and Say
// https://leetcode.com/problems/count-and-say/
/*
The count-and-say sequence is the sequence of integers with the first five terms as following:
1.     1
2.     11
3.     21
4.     1211
5.     111221
1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.

Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence.

Note: Each term of the sequence of integers will be represented as a string.

Example 1:
Input: 1
Output: "1"

Example 2:
Input: 4
Output: "1211"
 */
String countAndSay(int n) {
  if (n == 1) {
    return '1';
  }
  String str = countAndSay(n - 1);
  StringBuffer res = StringBuffer();
  int count = 0;
  String prev = '';
  for (int i = 0; i < str.length; ++i) {
    if (str[i] != prev) {
      if (count != 0) {
        res.write(count);
        res.write(prev);
      }
      count = 1;
      prev = str[i];
    } else {
      ++count;
    }
  }
  if (count != 0) {
    res.write(count);
    res.write(prev);
  }
  return res.toString();
}

void main() {
  for (int i = 1; i <= 5; ++i) {
    print(countAndSay(i));
  }
}
