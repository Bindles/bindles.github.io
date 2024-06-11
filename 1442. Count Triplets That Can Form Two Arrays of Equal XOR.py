#* 1442. Count Triplets That Can Form Two Arrays of Equal XOR
arr = [2,3,1,6,7]
from typing import List
#*
class Solution:
    def countTriplets(self, arr: List[int]) -> int:
        result = 0
        n = len(arr)
        for i in range(n):
            val = arr[i]
            for k in range(i + 1, n):
                val ^= arr[k]
                if val == 0:
                    result += k - i
        return result
    
print(Solution().countTriplets(arr))

#* TRANSLATING TO RUBY
# def count_triplets
#     result=0
#     n = arr.size
#     for i in 0...n do
#         val = arr[i]
#         for k in i+i...n
#             val ^= arr[k]
#                 result += k - i if val ==0

# impl Solution {
#     pub fn count_triplets(arr: Vec<i32>) -> i32 {
#         let mut result = 0 as i32;
#         let mut n = arr.len();
#         for i in 0..n {
#             let mut val = arr[i];
#             for k in i+1..n {
#                 val ^= arr[k];
#                 if val == 0 {
#                     result += (k - i) as i32;
#                 }
#             }
#         }
#         result
#     }
# }