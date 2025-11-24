void main(){
  String str = "AaEEEEeeeoooo";
  var list = ["a","e","i","o","u","y"];
  int count = 0;
  for(int i = 0; i < str.length; i++){
    for (int j = 0; j < list.length; j++){
      if (str[i].toLowerCase() == list[j]){
        count++;
      }
    }
    }
  
  print("Слово: $str\nГласных букв: $count");
}