import 'dart:io';
import 'dart:math';

void main() {
  var c1 = new Circle();
  print("Enter Radius Circle: ");
  double input = double.parse(stdin.readLineSync() as String);
  c1.setRadius = input;
  print("The Radius is : $input");
  double result = c1.circumference();
  print("Circumference circle is : $result");
}

class Circle {
  late double radius;
  set setRadius(double radius) {
    this.radius = radius;
  }

  double get getRadius {
    return radius;
  }

  double circumference() {
    return 2 * pi * radius;
  }
}
