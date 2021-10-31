/*
Very simple, given a number, find its opposite.

Examples:

1: -1
14: -14
-34: 34
 */

num opposite_v1(num n) => n.isNegative ? n.abs() : -n;
num opposite_v2(num n) => -n;

void main() {
  num value = 1;
  print(opposite_v1(value));
  print(opposite_v2(value));
}
