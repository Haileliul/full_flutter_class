import 'dart:io';

import 'dart:math';

main() {
  stdout.writeln('Enter the first  number ?');
  int? a = int.parse(stdin.readLineSync()!);
  stdout.writeln('Enter the second number ?');
  int? b = int.parse(stdin.readLineSync()!);
  stdout.writeln('Enter the operator you want to perform?');
  var o = stdin.readLineSync();
  var result;

  switch (o) {
    case '+':
      {
        result = addthem(a, b);
        print(" The Result is = $result");
        break;
      }
    case '-':
      {
        result = sub(a, b);
        print(" The Result is = $result");
        break;
      }
    case '/':
      {
        result = quetient(a, b);
        print(" The Result is = $result");
        break;
      }
    case '*':
      {
        result = mul(a, b);
        print(" The Result is = $result");
        break;
      }
    case '%':
      {
        result = module(a, b);
        print(" The Result is = $result");
        break;
      }
  }

  /*  if (o == '+') {
    // addthem(a, b);
    print(addthem(a, b));
  }
} */
}

int addthem(int x, int y) {
  int sum = x + y;
  return sum;
}

int sub(int x, int y) {
  int sub = x - y;
  return sub;
}

double quetient(int x, int y) {
  double div = x / y;
  return div;
}

int mul(int x, int y) {
  int mul = x * y;
  return mul;
}

int module(int x, int y) {
  int mod = x % y;
  return mod;
}
