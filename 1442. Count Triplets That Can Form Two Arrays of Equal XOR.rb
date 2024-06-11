#* 1442. Count Triplets That Can Form Two Arrays of Equal XOR
arr = [2,3,1,6,7]
def count_triplets(arr)
    result=0
    n = arr.size
    for i in 0...n
        val = arr[i]
        for k in i+1...n
            val ^= arr[k]
            if val == 0
                result += k - i
            end
        end
    end
    result
end
p count_triplets(arr)

def count_triplets(arr)
    result=0
    arr.each_index do |i|
        val = arr[i]
        (i+1...arr.size).each do |k|
            val ^= arr[k]
            if val == 0
                result += k - i
            end
        end
    end
    result
end
p count_triplets(arr)

# class Solution:
#     def countTriplets(self, arr: List[int]) -> int:
#         ans = 0
#         n = len(arr)
#         for i in range(n):
#             val = arr[i]
#             for k in range(i + 1, n):
#                 val = xor(val, arr[k])
#                 if val == 0:
#                     ans += k - i
#         return ans

# impl Solution {
#     pub fn count_triplets(arr: Vec<i32>) -> i32 {
#         let mut ans = 0 as i32;
#         let mut n = arr.len();
#         for i in 0..n {
#             let mut val = arr[i];
#             for k in i+1..n {
#                 val ^= arr[k];
#                 if val == 0 {
#                     ans += (k - i) as i32;
#                 }
#             }
#         }
#         ans
#     }
# }