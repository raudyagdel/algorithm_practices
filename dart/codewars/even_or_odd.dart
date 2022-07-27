/*
Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
 */

const parity = ['Even', 'Odd'];

extension Parity on int {
  String parity() => this % 2 == 0 ? 'Even' : 'Odd';
}

String evenOrOdd_v1(int number) => number.isEven ? 'Even' : 'Odd';
String evenOrOdd_v2(int number) => number.parity();
String evenOrOdd_v3(int number) => parity[number % 2];

void main() {
  int value = 2;
  print(evenOrOdd_v1(value));
  print(evenOrOdd_v2(value));
  print(evenOrOdd_v3(value));
}
