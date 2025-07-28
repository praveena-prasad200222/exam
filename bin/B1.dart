
import 'dart:io';

void main() {
  int n = 5;

  // Upper part
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    print('');
  }

  // Lower part
  for (int i = n - 1; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    print('');
  }
}