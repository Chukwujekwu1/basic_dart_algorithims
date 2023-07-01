import 'dart:io';

void main() {
  print("Basic Calculator");
  var date = DateTime.now();
  print(date);

  print("Enter first number");
  var num1 = int.parse(stdin.readLineSync()!);

  print("Pick an operator( + , * , - , /)");
  var operator = stdin.readLineSync();

  print("Enter second number");
  var num2 = int.parse(stdin.readLineSync()!);

  Solution sol = Solution();
  dynamic result = sol.calc(num1, num2, operator!);
  print(result);
}

class Solution {
  dynamic calc(int num1, int num2, String operator) {
    if (operator == "+") {
      return (num1 + num2);
    } else if (operator == "*") {
      return (num1 * num2);
    } else if (operator == "-") {
      return (num1 - num2);
    } else if (operator == "/") {
      return (num1 / num2);
    } else {
      return ("Invalid operator");
    }
  }
}
