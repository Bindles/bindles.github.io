class Solution:
    def numberOfChild(self, n: int, k: int) -> int:
        pos = 0
        dir = 1  

        for _ in range(k):
            pos += dir
            if pos == 0 or pos == n - 1:
                dir *= -1  

        return pos

# Test the function with the given examples
solution = Solution()

# Example 1
n1, k1 = 3, 5
output1 = solution.numberOfChild(n1, k1)
print(f"Output for n = {n1}, k = {k1}: {output1}")  # Expected output: 1

# Example 2
n2, k2 = 5, 6
output2 = solution.numberOfChild(n2, k2)
print(f"Output for n = {n2}, k = {k2}: {output2}")  # Expected output: 2

# Example 3
n3, k3 = 4, 2
output3 = solution.numberOfChild(n3, k3)
print(f"Output for n = {n3}, k = {k3}: {output3}")  # Expected output: 2
