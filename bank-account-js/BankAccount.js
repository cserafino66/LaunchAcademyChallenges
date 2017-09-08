class BankAccount {
  constructor (initialBalance) {
    this.initialBalance = initialBalance;
    this.bills = [];
  }

  addTransaction(amount) {
    this.bills.push(amount);
  }

  currentBalance() {
    let currentBalance = this.initialBalance;
    this.bills.forEach((transaction) => {
      currentBalance += transaction;
    });
    console.log(`The account's balance is currently $${currentBalance}`);
  }
}

let account = new BankAccount(1000);

account.addTransaction(-45);
account.addTransaction(-99.95);
account.addTransaction(-34.43);
account.currentBalance();
