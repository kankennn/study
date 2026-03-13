import 'dart:math';

class Matrix{
  int column = 3;
  int string = 3;
  Random random = Random();
  
  late List<List<double>> matrix2 = _matrixGenerate();
  late List<List<double>> matrix1 = _matrixGenerate();
  
  List<List<double>> _matrixGenerate() {return List.generate(column, (i) => List.generate(string, (j)=> (random.nextDouble() * 100).roundToDouble() / 10, growable: false), growable: false);}

  void matrixPrintFirst(){
  for(int i = 0; i< matrix1.length; i++){
   print("${matrix1[i]}");
  }
  }
  void matrixPrintSecond(){
  for(int i = 0; i< matrix2.length; i++){
    print("${matrix2[i]}");
  } 
  }
  void matrixPrintSum(){
    List<List<double>> matrixSum=[];
    for(int i = 0; i< column; i++){
      List<double> a = [];
      for(int j = 0;j< string;j++){
        a.add(double.parse(((matrix1[i][j]+matrix2[i][j]).toStringAsFixed(1))));

      }
    matrixSum.add(a);
    
    }
  print(matrixSum);  
  }
  void matrixPrintMult(){
    int mult = 20;
    List<List<double>> matrixMult=[];
    for(int i = 0; i< column; i++){
      List<double> a = [];
      for(int j = 0;j< string;j++){
        a.add(matrix1[i][j]*mult);

      }
    matrixMult.add(a);
    
    }
  print(matrixMult);  
  }
  void matricesPrintMult(){
    List<List<double>> MatrcesMult = List.generate(column, (i)=> List.generate(string, (j)=> 0));
    for(int i = 0;i<column; i++){
      for(int j = 0;j<string; j++){
        for(int k = 0;k<string; k++){
          MatrcesMult[i][j] += matrix1[i][k] * matrix2[k][j];
        }
      }
    }
    print(MatrcesMult.map((row) => row.map((e) => e.toStringAsFixed(1)).toList()).toList());
  }
}


void main(){
  Matrix matrixMain = Matrix();
  matrixMain.matrixPrintFirst();
  print("\n");
  matrixMain.matrixPrintSecond();
  print("\n");
  matrixMain.matrixPrintSum();
  print("\n");
  matrixMain.matrixPrintMult();
  print("\n");
  matrixMain.matricesPrintMult();
}