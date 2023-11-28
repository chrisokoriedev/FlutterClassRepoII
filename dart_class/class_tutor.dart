// class RegistrationController{
//   void register(String username, String password){
//         print("Registering user: $username");
//         print("Password: $password");
//     }
// }
class Point {
  int x = 0;
  int y = 0;
  move(){}
}

void main() {
  var p1 = Point();
  p1.x = 10;
  p1.y = 20;
  print(p1.x);
  print(p1.y);

//Cascade notation
  var p2 = Point()
    ..x = 100
    ..y = 200;
  print(p2.x);

// gaining access to method in a class
  var p3=Point().move();
}
// class Point {
//   int x = 0;
//   int y = 0;

//   void move(int x1, int y1) {
//     x = x1;
//     y = y1;
//   }

//   void show() {
//     print('Point($x,$y)');
//   }
// }

// void main() {
//   var p1 = Point()
//     ..x = 10
//     ..y = 20;
//   p1.move(100, 200);
//   p1.show();
// }

