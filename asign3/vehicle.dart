class vehicle {
  String brand;
  String model;
  int year;

  vehicle(this.brand, this.model, this.year);

  void drive() {
    print('the vehicle is driving');
  }
}

class car extends vehicle {
  int noofdoor;

  car(super.brand, super.model, super.year, this.noofdoor);

  void drive() {
    print(
        'the $brand $model $year is driving and the $noofdoor are closed doors ');
  }
}

void main() {
  print("Vehicle class");
  car c1 = new car("toyota", "corolla", 2000, 4);
  c1.drive();
}
