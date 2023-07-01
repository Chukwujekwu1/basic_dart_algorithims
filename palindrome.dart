import 'dart:io';

void main() {
  print("Enter a number");
  int x = int.parse(stdin.readLineSync()!);
  Solution solution = Solution();
  dynamic result = solution.isPalindrome(x);
  print(result);
}

class Solution {
  dynamic isPalindrome(int x) {
    if (x < 0) {
      return "Invalid";
    }
    var check = x.toString().split("").reversed.join();
    int y = int.parse(check);
    if (x == y) {
      return true;
    } else {
      return false;
    }
  }
}
