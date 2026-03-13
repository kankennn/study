class passwordValidator{
  static const int min = 8;
  static void validate(String password){
  
    if (password.length < min){
      print("incorrect");

   }
    bool digit = password.split('').any((i) => int.tryParse(i) != null);
    if(digit){
      print("correct");
    }
    else{
      print("incorrect");
    }
  }
    
}
void main(){
  passwordValidator.validate("passs2sdf");

}