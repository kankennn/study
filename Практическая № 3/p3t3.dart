void solution(int a, int b){
  if(a==b){
    print(a);
    return;
  }
  
  print(a);
  
  if(a<b){
    solution(a+1,b);
  }
  else{
    solution(a-1,b);
  }


}

void main(){
solution(80, 40);
}