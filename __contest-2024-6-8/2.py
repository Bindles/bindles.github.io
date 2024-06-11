class Solution:
    def valueAfterKSeconds(self, n: int, k: int) -> int:
        MOD = 10**9 + 7
        
        a = [1] * n
        
        for _ in range(k):
            for i in range(1, n):
                a[i] = (a[i] + a[i - 1]) % MOD
                print(i)
        
        return a[-1]

# Testing the function with provided test cases
solution = Solution()
print(solution.valueAfterKSeconds(4, 5))  # Expected output: 56
print(solution.valueAfterKSeconds(5, 3))  # Expected output: 35