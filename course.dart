void main() {
  _course c1 = _course();
  c1._name = "Dart";
  c1._code = "CS52";
  c1._instructor = "Asif";
  c1._credit = "3.2";
  c1._noOfcredit = 15;
  c1._costpercredit = 2000;
  print("The name of course is ${c1._name}");
  print("The code of course is ${c1._code}");
  print("The instructor of course is ${c1._instructor}");
  print("The name of credit is ${c1._credit}");
  print("The no Of credit of course is ${c1._noOfcredit}");
  print("The cost per credit of course is ${c1._costpercredit}");
  print("The overall cost of credit of course is ${c1.totalcost()}");
}

class _course {
  late String _name;
  late String _code;
  late String _instructor;
  late String _credit;
  late int _noOfcredit;
  late double _costpercredit;
  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  String get instructor => _instructor;

  set instructor(String value) {
    _instructor = value;
  }

  String get credit => _credit;

  set credit(String value) {
    _credit = value;
  }

  int get noOfcredit => _noOfcredit;

  set noOfcredit(int value) {
    _noOfcredit = value;
  }

  double get costpercredit => _costpercredit;

  set costpercredit(double value) {
    _costpercredit = value;
  }

  double totalcost() {
    return _noOfcredit * _costpercredit;
  }
}
