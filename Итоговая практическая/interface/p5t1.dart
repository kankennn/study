import 'dart:io';
import '../logic/logic.dart';



void main() async {
  print("Команды:\n получить: get username \n удалить: delete username \n добавить: add username firstName lastName email password phone \n изменить: change username firstName lastName email password phone \n выход: exit");
  while(true){
    stdout.write("Выполните команду: ");
    final input = stdin.readLineSync()!.trim().split(' ');
    print("input: $input");
    final command = input[0].toLowerCase().trim();
    print("command: $command");
    switch(command){
      //проблемы с кодировкой, поэтому команды на английском
      case 'get':
        await getData(input[1]);
        break;
      case 'delete':
        await deleteData(input[1]);
        break;
      case 'add':
        await sendData(input[1], input[2], input[3], input[4], input[5], input[6]);
        break;
      case 'change':
        await changeData(input[1], input[2], input[3], input[4], input[5], input[6]);
        break;
      case 'exit':
        return;
      default:
        print("Error");
    }
  }
}
