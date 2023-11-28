void getName(String name) {
  print("Hello $name");
}

String greet(String name, [String? title]) {
  if (title!.isEmpty) {
    return 'Hello $name';
  }
  return 'Hello $title $name!';
}

String greetone({
  String name = '',
  String title = '',
}) {
  return 'Hello $title $name!';
}

void connect(String host,
    {int port = 0, String user = 'chris', String password = '1234'}) {
  print('Connecting to $host  on $port using $user/$password...');
}

int add(int x, int y) {
  return x + y;
}

void main() {
  getName('Tomiwa');
  print(greet(''));
  print(greetone(name: 'John', title: 'Mr.'));
  connect('Localhost', port: 8080, user: 'chris', password: '<PASSWORD>');
  print(add(10, 20));
}
