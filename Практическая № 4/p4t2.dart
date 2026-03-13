Future<String> getWeather() async{
  
  await Future.delayed(Duration(seconds: 3));
  throw Exception("Ошибка");
  
}

void main() async{
  try{
    String message = await getWeather();
    print("Ваше число: $message!");
  }
  catch(e){
    print("Возникла ошибка: $e");
  }

}