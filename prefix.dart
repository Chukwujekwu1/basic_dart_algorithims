///Input: strs = ["flower","flow","flight"]
/// Output: "fl"
/// Write a function to find the longest common prefix string amongst an array of strings.



void main() {
  List<String> name = ["flower","flow","flight"];

  Solution sol = Solution();
  dynamic result = sol.commonPrefix(name);
  print(result);
}

class Solution {
  String commonPrefix(List<String> name) {
    String common = name.first;
    for (var word in name) {
      while (!word.startsWith(common)) {
       common = common.substring(0, common.length - 1);
      }
    }
    return common;
  }
}
