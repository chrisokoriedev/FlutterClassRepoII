class Point {
  // final int x;
  // final int y;

  // Point({required this.x, required this.y});

  int x = 0;
  int y = 0;

  Point(this.x, this.y);
  //Forwarding constructors
  Point.name() : this(40, 10);

  Point.fun(this.x, this.y);
//Named constructor
  Point.origin(int x, int y) {
    this.x = x;
    this.y = y;
  }
}


void main() {
  var p1 = Point.fun(10, 10);
  var p2 = Point.origin(12, 10);
  var p3 = Point.name();
  print(p1.x);
  print(p2.x);
  print(p3.x);
}
