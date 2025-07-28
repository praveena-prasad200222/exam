import 'dart:io';

void main() {
  List<int> numbers = [];
  List<int> even = [];
  List<int> odd = [];

  int num;

  do {
    stdout.write("Enter a number (0 to stop): ");
    num = int.parse(stdin.readLineSync()!);

    if (num != 0) {
      numbers.add(num);

      if (num % 2 == 0) {
        even.add(num);
      } else {
        odd.add(num);
      }
    }
  } while (num != 0);

  if (numbers.isNotEmpty) {
    int max = numbers[0];
    for (int n in numbers) {
      if (n > max) {
        max = n;
      }
    }

    print("\nAll Numbers: $numbers");
    print("Even Numbers: $even");
    print("Odd Numbers: $odd");
    print("Greatest Number: $max");
  } else {
    print("No numbers entered.");
  }
}
