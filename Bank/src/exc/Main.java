package exc;

//Custom exception for insufficient balance
class InsufficientBalanceException extends Exception {
 InsufficientBalanceException(String msg) {
     super(msg);
 }
}

//Custom exception for invalid deposit
class InvalidDepositException extends Exception {
 InvalidDepositException(String msg) {
     super(msg);
 }
}

//Bank Account class
class BankAccount {
 private String accountHolder;
 private double balance;

 // Constructor
 public BankAccount(String accountHolder, double balance) {
     this.accountHolder = accountHolder;
     this.balance = balance;
 }

 // Deposit method
 public void deposit(double amount) throws InvalidDepositException {
     if (amount <= 0) {
         throw new InvalidDepositException("Deposit amount must be positive.");
     }
     balance += amount;
     System.out.println("Deposited: ₹" + amount);
 }

 // Withdraw method
 public void withdraw(double amount) throws InsufficientBalanceException {
     if (amount > balance) {
         throw new InsufficientBalanceException("Insufficient balance for withdrawal.");
     }
     balance -= amount;
     System.out.println("Withdrawn: ₹" + amount);
 }

 public void displayBalance() {
     System.out.println("Current balance: ₹" + balance);
 }
}

//Main class to test
public class Main {
 public static void main(String[] args) {
     BankAccount account = new BankAccount("Roshan Patil", 5000.0);

     try {
         account.displayBalance();
         account.deposit(1000);     // Valid deposit
         account.withdraw(7000);    // Will throw InsufficientBalanceException
     } catch (InvalidDepositException e) {
         System.out.println("Deposit Error: " + e.getMessage());
     } catch (InsufficientBalanceException e) {
         System.out.println("Withdraw Error: " + e.getMessage());
     }

     account.displayBalance();
     System.out.println("Transaction complete.");
 }
}
