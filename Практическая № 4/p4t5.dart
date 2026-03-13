Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 1), () => "");
}
Future<String> processOrder(String order) async{
  if(order.isEmpty){
    throw Exception("Пустой заказ");
  }
  else{
    return "Заказ: $order";
  }
}
void main() async{
  try{
    String order = await fetchUserOrder();
    String result = await processOrder(order);
    print("$result");
  }
  catch(e){
    print("Ошибка: $e");
  }
}