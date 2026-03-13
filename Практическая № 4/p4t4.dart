import 'dart:math';

Future<String> fetchUserData() async{
  await Future.delayed(Duration(seconds: 1));
  if(Random().nextDouble()>0.5){
      throw Exception("Ошибка загрузки данных");
    }
  return "Leo";
}

void main() async{
  try{
    String message = await fetchUserData();
    print("Данные пользователя: $message");

  }
  catch(e){
    print("Ошибка: $e");
  }
  

}
