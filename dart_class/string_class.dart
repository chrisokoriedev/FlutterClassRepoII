void main() {
  String message = 'It\'s me.';
  print(message);

  String message1 = '\"Dart is awesome!\". They said.';
  print(message1);

  var message3 = 'Christian';
  print(message3.length);

  var fullname = 'Okorie Christian';
  var lastName = fullname.substring(0, 6);

  print("Hello $lastName");

  var sql = """select phone
  from phone_books
  where name =?""";

  print(sql);

  

}
