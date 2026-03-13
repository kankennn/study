void main() async{
  for (int i = 1; i<5; i++){
    await Future.delayed(Duration(seconds: 1));
    print(i);
  }
  
}