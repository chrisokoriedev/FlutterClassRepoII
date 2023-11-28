void main() {
  int qty = 5;
  String amount = "100";
  int Amount = int.parse(amount);
  int total = qty * Amount;

  print('Total: $total');

  String amountStr = "a100000";
  String amountStr1 = amountStr.substring(1, amountStr.length);
  int amountOne = int.parse(amountStr1);

  print('Total: $amountOne');
}
