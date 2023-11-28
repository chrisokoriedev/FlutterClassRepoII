class Point {
  int x;
  int y;
  static int _counter = 0;

  Point({this.x = 0, this.y = 0}) {
    _counter++;
  }
}

void main() {
  var p1 = new Point(x: 10, y: 20);
  var p2 = new Point(x: 100, y: 200);
  var p3 = new Point(x: 100, y: 200);
  print(Point._counter); // 2
}