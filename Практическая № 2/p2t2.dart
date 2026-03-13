
abstract class Shape{
  Shape();
  double area();
  factory Shape.fromJson(Map<String, dynamic> json){
    switch (json["type"]){
      case "circle":
        return Circle(json["radius"] as int);
      case "rectangle":
        return Rectangle(json["width"] as int, json["height"] as int);
      default:
        throw ArgumentError("=(");
    }
  }
}
class Circle extends Shape{
  static const pi = 3.14;
  int radius;
  Circle(this.radius);
  @override
  double area(){
    return(pi*radius*radius);
  }

  @override
  String toString() => "radius: $radius";
}
class Rectangle extends Shape{
  int width;
  int height;
  Rectangle(this.width,this.height);
  @override
  double area(){
    return(width * height).toDouble();
    
  }
  String toString() => "width: $width, height: $height";
}
void main(){
  Map<String, dynamic> circleJson =  {"type": "circle", "radius": 5};
  Map<String, dynamic> rectangleJson =  {"type": "rectangle", "width": 4, "height": 6};
  Shape circle = Shape.fromJson(circleJson);
  Shape rectangle = Shape.fromJson(rectangleJson);
  print("$circle");
  print("Circle Area: ${circle.area()}");
  print("$rectangle");
  print("Rectangle Area: ${rectangle.area()}");
}