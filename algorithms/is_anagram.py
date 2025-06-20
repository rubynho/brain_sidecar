class Solution:
    """
    Checks if two strings are anagrams of each other (i.e. has the same characters).

    Complexity
    time:  O(n)
    space: O(1)

    Ref: https://neetcode.io/problems/is-anagram
    """

    @staticmethod
    def is_anagram(s: str, t: str) -> bool:
        if len(s) != len(t):
            return False

        count = [0] * 26
        for i in range(len(s)):
            count[ord(s[i]) - ord('a')] += 1
            count[ord(t[i]) - ord('a')] -= 1

        for v in count:
            if v != 0:
                return False

        return True

print(Solution.is_anagram("jar", "jam"))
print(Solution.is_anagram("jam", "jam"))
