// arithmetic progression

void main() {
  List<int> arr = [3, 5, 1];
  Solution sol = Solution();
  dynamic result = sol.isArithmetric(arr);
  print(result);
}

class Solution {
  bool isArithmetric(List<int> arr) {
    arr.sort();
    int commonDiff = arr[1] - arr.first;
    for (var i = 2; i < arr.length; i++) {
      if (arr[i] - arr[i - 1] != commonDiff) {
        return false;
      }
    }
    return true;
  }
}
