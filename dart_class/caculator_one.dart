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

void main() {
  print("Enter the first number: ");
  var x = int.parse(stdin.readLineSync()!);

  print("Enter the second number: ");
  var y = int.parse(stdin.readLineSync()!);

  print("Enter the operation (+, -, *, /): ");
  var operation = stdin.readLineSync()!;

  switch (operation) {
    case '+':
      print("Result: ${add(x, y)}");
      break;
    case '-':
      print("Result: ${subtract(x, y)}");
      break;
    case '*':
      print("Result: ${multiply(x, y)}");
      break;
    case '/':
      print("Result: ${divide(x, y)}");
      break;
    default:
      print("Invalid operation.");
  }
}
