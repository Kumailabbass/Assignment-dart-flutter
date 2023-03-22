class bankAccont {
  int accountnumber;
  double balance;
  double depositamount;
  double withdrawamount;

  bankAccont(this.accountnumber, this.balance, this.depositamount,
      this.withdrawamount);

  void deposit() {
    balance = balance + depositamount;
    print("Deposited amount is $depositamount and balance is $balance");
  }

  void withdraw() {
    balance = balance - withdrawamount;
    print("Withdrawn amount is $withdrawamount and balance is $balance");
  }
}

class checkingAccount extends bankAccont {
  late double transitionlimit = balance;

  checkingAccount(super.accountnumber, super.balance, super.depositamount,
      super.withdrawamount);

  void withdraw() {
    if (withdrawamount >= balance) {
      print(
          "requested amount $withdrawamount is not avaiable account and account balance is $balance");
    } else {
      print("withdrawn amount $withdrawamount and account balance is $balance");
    }
  }
}

void main() {
  checkingAccount a = new checkingAccount(2000, 4000, 1000, 9000);
  a.deposit();
  a.withdraw();
}
