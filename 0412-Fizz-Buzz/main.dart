// 412. Fizz Buzz
// https://leetcode.com/problems/fizz-buzz/
/*
Write a program that outputs the string representation of numbers from 1 to n.
But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

Example:
n = 15,
Return:
[
    "1",
    "2",
    "Fizz",
    "4",
    "Buzz",
    "Fizz",
    "7",
    "8",
    "Fizz",
    "Buzz",
    "11",
    "Fizz",
    "13",
    "14",
    "FizzBuzz"
]
 */

List<String> fizzBuzz(int n) {
  List<String> res = [];
  for (int i = 1; i <= n; ++i) {
    if (i % 15 == 0) {
      res.add('FizzBuzz');
    } else if (i % 5 == 0) {
      res.add('Buzz');
    } else if (i % 3 == 0) {
      res.add('Fizz');
    } else {
      res.add(i.toString());
    }
  }
  return res;
}

void main() {
  List<String> actual = fizzBuzz(15);
  List<String> expected = [
    "1",
    "2",
    "Fizz",
    "4",
    "Buzz",
    "Fizz",
    "7",
    "8",
    "Fizz",
    "Buzz",
    "11",
    "Fizz",
    "13",
    "14",
    "FizzBuzz"
  ];
  print(isEqual(actual, expected));
}

bool isEqual(List<String> a, List<String> b) {
  if (a == null && b == null) {
    return true;
  }
  if (a == null || b == null) {
    return false;
  }
  if (a.length != b.length) {
    return false;
  }
  for (int i = 0; i < a.length; ++i) {
    if (a[i] != b[i]) {
      return false;
    }
  }
  return true;
}
