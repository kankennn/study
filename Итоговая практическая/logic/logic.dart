import 'package:http/http.dart' as http;
import 'dart:convert';


int _id = 1;
String url = 'https://petstore.swagger.io/v2/user';
Future<void> getData(String username) async {
  final response = await http.get(Uri.parse('$url/$username'));
  
  if (response.statusCode == 200) {
    print("Юзер: ${response.body}");
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
Future<void> deleteData(String username) async {
  final response = await http.delete(Uri.parse('$url/$username'));
  if (response.statusCode == 200) {
    print('Пользователь $username удалён');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
Future<void> sendData(String username, String firstName, String lastName, String email, String password, String phone) async {
  final payload = {'id': _id++, 'username': username, 'firstName': firstName, 'lastName': lastName, 'email': email, 'password': password, 'phone': phone, 'userStatus': 1};
  final response = await http.post(
    Uri.parse('$url'),
    body: jsonEncode(payload),
    headers: {'Content-Type': 'application/json'},
  );
  if (response.statusCode == 200) {
    print('Юзер $username добавлен');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
Future<void> changeData(String username, String firstName, String lastName, String email, String password, String phone) async {
  final payload = {'id': 1,'username': username, 'firstName': firstName, 'lastName': lastName, 'email': email, 'password': password, 'phone': phone, 'userStatus': 1};
  final response = await http.put(
    Uri.parse('$url/$username'),
    body: jsonEncode(payload),
    headers: {'Content-Type': 'application/json'},
  );
  if (response.statusCode == 200) {
    print('Юзер $username обновлен');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

