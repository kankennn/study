import 'dart:io';


Future<String> loadUserData(){
  stdout.write("Введите имя пользователя: ");
  var User = stdin.readLineSync();
  return Future.delayed(Duration(seconds: 3), () => "$User");
}

void main() async{

  String message = await loadUserData();
  print("Привет $message!");
}
