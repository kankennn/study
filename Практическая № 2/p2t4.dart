import 'dart:math';

class BankAccount{
  int _accountNumber;
  double _balance;
  String _ownerName;

  BankAccount(this._ownerName): _accountNumber = _generateAccountNumber(), _balance = 0;

  int get accountNumber => _accountNumber;
  double get balance => _balance;
  String get ownerName => _ownerName;

  set ownerName(String newOwnerName){
    if (newOwnerName.isNotEmpty){
      _ownerName = newOwnerName;
    }
    else{
      print("Имя владельца не должно быть пустым");
    }
  }
  void deposit(double amount){
    if (amount > 0){
      _balance += amount;
      print("Вы пополнили счет $accountNumber на $amount. Баланс: $balance");
    }
    else{
      print("Сумма должна быть положительной");
    }
  }
  void withdraw(double amount){
    if (amount > 0 && amount <= _balance){
      _balance -= amount;
      print("Вы сняли $amount. Баланс: $balance");
    }
    else{
      print("Недостаточно средств");
    }
  }
  void displayBalance(){
    print("Счет: $accountNumber\nБаланс: $balance\nВладелец: $ownerName");
  }
  static int _generateAccountNumber(){
  Random random = Random();
  return 1000 + random.nextInt(9000);
  }



}
class Bank{
  final List<BankAccount> _accounts = [];


  void addAccount(String ownerName){
    final account = BankAccount(ownerName);
    _accounts.add(account);
    print("Создан счет для ${account.ownerName}, номер карты ${account.accountNumber}");
  }
  BankAccount? findAccount(int accountNumber){
    try{
      return _accounts.firstWhere((a) => a.accountNumber == accountNumber);
    }
    catch(e){
      return null;
    }
  }
  void transfer(fromAccountNumber,toAccountNumber, amount){
    final from = findAccount(fromAccountNumber);
    final to = findAccount(toAccountNumber);

    if(from == null || to == null){
      print("Счета не существует");
      return;
    }
    if(amount>from.balance){
      print("Недостаточно средств");
      return;
    }
    from.withdraw(amount);
    to.deposit(amount);
    print("Выполнен перевод на сумму $amount со счета ${from.accountNumber} на ${to.accountNumber}");
  }
}
void main(){
  Bank bank = Bank();
  bank.addAccount("Arseniy");
  bank.addAccount("Leo");

  int first = bank._accounts[0].accountNumber;
  int second = bank._accounts[1].accountNumber;

  bank.findAccount(first)?.deposit(500);
  bank.transfer(first, second, 100.0);

  bank.findAccount(first)?.displayBalance();

}