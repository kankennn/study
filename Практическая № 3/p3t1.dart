class Phone{
  int number;
  String model;
  double? weight;
  Phone._create(this.number,this.model,this.weight);
  factory Phone(int number, String model, double weight){
    return Phone._create(number,model,weight);
  }
  factory Phone.second(int number, String model){
    return Phone._create(number,model,null);
  }
  factory Phone.third(){
    return Phone._create(0,"Unknown",null);
  }
  void display() => print("number: $number\nmodel: $model\nweight: $weight\n");
  void receiveCall(String name) => print("Звонит $name");
  int getNumber() {return number;}
  void sendMessage(List<String> numbers, String message){
    print("Получатели: $numbers\nСообщение: $message");
  }

}


void main(){
  Phone phoneFirst = Phone(123,"iphone 17",250.0);
  phoneFirst.receiveCall("Андрей");
  print("Номер: ${phoneFirst.getNumber()}");
  phoneFirst.display();
  
  Phone phoneSecond = Phone.second(456,"Samsung");
  phoneSecond.receiveCall("Арсений");
  print("Номер: ${phoneSecond.getNumber()}");
  phoneSecond.display();
  
  Phone phoneThird = Phone.third();
  phoneThird.receiveCall("Алексей");
  print("Номер: ${phoneThird.getNumber()}");
  phoneThird.display();
  
  phoneFirst.sendMessage(["123","456"], "ааааа");
}