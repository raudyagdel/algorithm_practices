/*
We need a function that can transform a number into a string.

What ways of achieving this do you know?

Examples:
123 --> "123"
999 --> "999"
*/

String numberToString(int n) => '$n';

void main() {
  int value = 999;
  print(numberToString(value));
}
