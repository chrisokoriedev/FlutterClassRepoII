class Point {
  int x = 0;
  int y = 0;

  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void reset() {
    this.x = 0;
    this.y = 0;
  }

  void show() {
    print('Point($x,$y)');
  }
}

void main() {
  var p1 = Point();
  p1.move(10, 20);
  p1.show();
  p1.reset();
}