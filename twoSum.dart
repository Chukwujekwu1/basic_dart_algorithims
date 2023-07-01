import 'dart:ffi';

// this code is to find two numbers in an array that add up to get a specific number target

void main() {
  List<int> nums = [3, 4, 5, 7, 6];
  int target = 100;

  Solution done = Solution();
  dynamic answer = done.twoSum(nums, target);
  print(answer);
}

class Solution {
  dynamic twoSum(List<int> nums, int target) {
    dynamic result = [];
    for (int i = 0; i < nums.length; i++) {
      for (int i2 = i + 1; i2 < nums.length; i2++) {
        if (nums[i] + nums[i2] == target) {
          result.addAll([i, i2]);
        }
      }
    }
    return result;
  }
}
