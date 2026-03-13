import 'dart:math';

class MathProcessor{
    List<double> number;
    MathProcessor(this.number);
    List<double> process(double Function(double) func){
        return number.map(func).toList();
    }
    
    static List<double> getRandomNumbers() {
      Random random = Random();
      return List.generate(5, (_) => random.nextInt(100).toDouble());
    }
  }



void main(){
    List<double> number = MathProcessor.getRandomNumbers();
    print('asdf: $number');
    

}