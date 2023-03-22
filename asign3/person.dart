class person {
  String firstname;
  String lastname;

  person(this.firstname, this.lastname);

  void fullname() {
    print('Full name is $firstname $lastname');
  }
}

class student extends person {
  String major;

  student(super.firstname, super.lastname, this.major);

  void fullname() {
    print('Full name is $firstname $lastname and his major is $major');
  }
}

void main() {
  student s1 = new student('Abdullah', 'RC', 'MBBS');
  s1.fullname();
}
