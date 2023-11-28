void main() {

  int total = 0, i = 0;

  while (i < 10) {
    i++;
    if (i % 2 == 0) {
print(total);

      continue;
    }
print(total);
    total += i;
    print(i);

  }

  print('Total: $total');

}