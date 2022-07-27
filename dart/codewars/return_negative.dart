/*
In this simple assignment you are given a number and have to make it negative. But maybe the number is already negative?

Notes
The number can be negative already, in which case no change is required.
Zero (0) is not checked for any specific sign. Negative zeros make no mathematical sense.
 */

num makeNegative_v1(n) => -n.abs();
num makeNegative_v2(n) => n.isNegative ? n : -n;
num makeNegative_v3(n) => n > 0 ? -n : n;

void main() {
  num value = 2;
  print(makeNegative_v1(value));
  print(makeNegative_v2(value));
  print(makeNegative_v3(value));
}
