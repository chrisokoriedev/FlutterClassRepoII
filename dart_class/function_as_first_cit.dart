add(int x, int y) {
  return x + y;
}

subtract(int x, int y) {
  return x - y;
}

multiply(int x, int y) {
  return x * y;
}

divide(int x, int y) {
  return x / y;
}

calculation(String op) {
  if (op == '+') return add;
  if (op == '-') return subtract;
  if (op == '*') return multiply;
  if (op == '/') return divide;
}

void main() {
  var fn = calculation('+');
  print(fn(10, 20));

  fn = calculation('-');
  print(fn(30, 20));
}

