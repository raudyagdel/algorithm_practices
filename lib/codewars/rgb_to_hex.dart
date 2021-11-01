/*
The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here
 */
import 'dart:math';

String toHex(int v) => max(0, min(255, v)).toRadixString(16).padLeft(2, '0');

String rgb(int r, int g, int b) =>
    [toHex(r), toHex(g), toHex(b)].join().toUpperCase();

void main() {
  String value = rgb(-20, 255, 300);
  print(value);
}
