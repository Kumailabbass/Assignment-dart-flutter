void main() {
  _student s1 = _student();
  s1._name = "Abbas";
  s1._age = 19;
  s1._major = "computer";
  s1._gpa = 3.3;
  print("your name is ${s1._name}");
  print("your age is ${s1._age}");
  print("your major is ${s1._major}");
  print("your gpa is ${s1._gpa}");
}

class _student {
  late String _name;
  late int _age;
  late String _major;
  late double _gpa;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get major => _major;

  set major(String value) {
    _major = value;
  }

  double get gpa => _gpa;

  set gpa(double value) {
    _gpa = value;
  }

  void gradeLevel() {
    if (age < 6) {
      print("you are in pre school");
    } else if (age <= 11 || age > 6) {
      print("your are in primary");
    } else if (age <= 16 || age > 11) {
      print("your are in secondary");
    } else if (age <= 18 || age > 16) {
      print("your are in higher secondary");
    } else if (age <= 24 || age > 18) {
      print("your are in university");
    } else {
      print("you are an adult");
    }
  }
}
