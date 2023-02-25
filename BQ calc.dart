import 'dart:io';
import 'dart:math';

void main() {
//Q1

  double base, height, area;
  stdout.write("Enter the base of the triangle: ");
  base = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the height of the triangle: ");
  height = double.parse(stdin.readLineSync()!);

  area = (base * height) / 2;
  print("The area of the triangle is $area");

//Q2

  double num1, num2, average;
  stdout.write("Enter the first number: ");
  num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  num2 = double.parse(stdin.readLineSync()!);

  average = (num1 + num2) / 2;
  print("The average of $num1 and $num2 is ${average.toStringAsFixed(2)}");

//Q3

  double radius, volume, surfaceArea;
  stdout.write("Enter the radius of the sphere: ");
  radius = double.parse(stdin.readLineSync()!);
  volume = (4 / 3) * pi * pow(radius, 3);
  surfaceArea = 4 * pi * pow(radius, 2);
  print("The volume of the sphere is $volume");
  print("The surface area of the sphere is $surfaceArea");

//Q4

  {
    int base, exponent, result = 1;
    stdout.write("Enter the base: ");
    base = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the exponent: ");
    exponent = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= exponent; i++) {
      result *= base;
    }
    print("$base raised to the power of $exponent is $result");

//Q5

    double celsius, fahrenheit;
    stdout.write("Enter the temperature in Celsius: ");
    celsius = double.parse(stdin.readLineSync()!);
    fahrenheit = (9 / 5) * celsius + 32;
    print("$celsius Celsius is $fahrenheit Fahrenheit");

//Q6(challenge question)

    int num;
    stdout.write("Enter a positive integer: ");
    num = int.parse(stdin.readLineSync()!);
    bool isPrime = true;
    for (int i = 2; i <= num / 2; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (num == 1) {
      print("$num is not a prime number");
    } else if (isPrime) {
      print("$num is a prime number");
    } else {
      print("$num is not a prime number");
    }
  }
}
