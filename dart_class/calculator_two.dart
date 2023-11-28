import 'dart:io';

int add(int x, int y) {
  return x + y;
}

int subtract(int x, int y) {
  return x - y;
}

int multiply(int x, int y) {
  return x * y;
}

double divide(int x, int y) {
  if (y != 0) {
    return x / y;
  } else {
    print("Error: Division by zero is not allowed.");
    return 0;
  }
}

calculation(String op) {
  if (op == '+') return add;
  if (op == '-') return subtract;
  if (op == '*') return multiply;
  if (op == '/') return divide;
}

void main() {
  print("Enter the first number: ");
  var num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  var num2 = int.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /): ");
  var operation = stdin.readLineSync()!;

  var fn = calculation(operation);
  if (fn != null) {
    var result = fn(num1, num2);
    print("Result: $result");
  } else {
    print("Invalid operation.");
  }
}
