// Given an array of positive integers nums, return an array answer that consists of the digits of each integer in nums after separating them in the same order they appear in nums.
// To separate the digits of an integer is to get all the digits it has in the same order.
// Input: nums = [13,25,83,77]
// Output: [1,3,2,5,8,3,7,7]
// Explanation:
// - The separation of 13 is [1,3].
// - The separation of 25 is [2,5].
// - The separation of 83 is [8,3].
// - The separation of 77 is [7,7].
// answer = [1,3,2,5,8,3,7,7]. Note that answer contains the separations in the same order.

void main() {
  var nums = {6474,8499,45464,5468,46546,4654};
  Solution sol = Solution();
  dynamic result = sol.separateDigits(nums);
  print(result);
}

class Solution {
  dynamic separateDigits(nums) {
    var digit = nums.join().split('').map(int.parse).toList();
    return digit;
  }
}
