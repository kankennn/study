import 'dart:io';

void main(){
  try{
    stdout.write("Введите первое число: ");
    var first = stdin.readLineSync();
    int num1 = int.parse(first!);

    stdout.write("Введите операнд: ");
    var operand = stdin.readLineSync();

    stdout.write("Введите второе число: ");
    var second = stdin.readLineSync();
    int num2 = int.parse(second!);

    switch(operand){
      case "+":
        int sum = num1 + num2;
        print("Ответ: $sum");
      case "-":
        int minus = num1 - num2;
        print("Ответ: $minus");
      case "*":
        int mult = num1 * num2;
        print("Ответ: $mult");
      case "/":
        if (num2 != 0){
          double div = num1 / num2;
          print("Ответ: $div");
        }
        else{
          print("Знаменатель не должен быть равен 0");
        }
      case "%":
        int percent = num1 % num2;
        print("Ответ: $percent");
      default:
        print("Вы ввели некорректный операнд");
    }
  }
  catch(e){
    print("Вы ввели некорректное значение $e");
  }
}