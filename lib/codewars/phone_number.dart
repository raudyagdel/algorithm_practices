String createPhoneNumber(List numbers) {
  String p = numbers.join('');
  return '(${p.substring(0, 3)}) ${p.substring(3, 6)}-${p.substring(6)}';
}

void main() {
  String value = createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
  print(value);
}
