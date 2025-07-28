import 'dart:io';

void main() {
  String? name;
  double balance = 0;
  bool accountCreated = false;

  print("Welcome to the Banking Management System!");

  while (true) {
    print("\nChoose an option:");
    print("1. Create Account");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. View Account Details");
    stdout.write("Enter your choice (1–4): ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter account holder name: ");
      name = stdin.readLineSync()!;
      stdout.write("Enter initial deposit amount: ");
      balance = double.parse(stdin.readLineSync()!);
      accountCreated = true;
      print("Account created successfully!");
    } else if (!accountCreated) {
      print("Please create an account first.");
    } else if (choice == 2) {
      stdout.write("Enter deposit amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      balance += amount;
      print("Deposit successful. New balance: $balance");
    } else if (choice == 3) {
      stdout.write("Enter withdrawal amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      if (amount > balance) {
        print("Insufficient balance.");
      } else {
        balance -= amount;
        print("Withdrawal successful. New balance: $balance");
      }
    } else if (choice == 4) {
      print("\n--- Account Details ---");
      print("Name: $name");
      print("Balance: $balance");
    } else {
      print("Invalid choice. Please select between 1 and 4.");
    }

    stdout.write("\nDo you want to continue? (yes/no): ");
    String? answer = stdin.readLineSync();
    if (answer!.toLowerCase() != 'yes') {
      print("Thank you for using the Banking Management System. Goodbye!");
      break;
    }
  }
}
