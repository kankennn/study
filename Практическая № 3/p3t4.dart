class Student{
  String firstName;
  String lastName;
  String group;
  double averageMark;
  Student(this.firstName,this.lastName,this.group,this.averageMark);
  void getScholarship(){
    if(averageMark == 5){
      print("Стипендия: 2000 рублей");
    }
    else{
      print("Стипендия: 1900 рублей");
    }
  }

}
class Aspirant extends Student{
  Aspirant(super.firstName, super.lastName, super.group, super.averageMark);
  
  @override
  void getScholarship(){
    if(averageMark == 5){
      print("Стипендия: 2500 рублей");
    }
    else{
      print("Стипендия: 2200 рублей");
    }
  }

}
void main(){
  List<Student> students = [
    Student("Арсений", "Дорохов", "123", 4.2),
    Aspirant("Лев", "Захаров", "456", 5.0),
  ];
  for(var student in students){
    student.getScholarship();
  }

}
