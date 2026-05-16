# [392. Is Subsequence](https://leetcode.com/problems/is-subsequence/description/)
- **Solved**
- **Easy**
- **Topics:** `Junior` `Two Pointers` `String` `Dynamic Programming`

Given two strings `s` and `t`, return `true` if `s` is a subsequence of `t`, or `false` otherwise.

A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., `"ace"` is a subsequence of `"abcde"` while `"aec"` is not).

 
#### Example 1:
> **Input:** s = "abc", t = "ahbgdc" <br>
> **Output:** true <br>

#### Example 2:
> **Input:** s = "axc", t = "ahbgdc" <br>
> **Output:** false <br>

#### Constraints:
- `0 <= s.length <= 100`
- `0 <= t.length <= 10^4`
- s and t consist only of lowercase English letters.
 
**Follow up:** Suppose there are lots of incoming `s`, say `s_1, s_2, ..., s_k` where `k >= 10^9`, and you want to check one by one to see if `t` has its subsequence. In this scenario, how would you change your code?