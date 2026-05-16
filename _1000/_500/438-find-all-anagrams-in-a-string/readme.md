# [438. Find All Anagrams in a String](https://leetcode.com/problems/find-all-anagrams-in-a-string/description/)
- **Solved**
- **Medium**
- **Topics:** `Junior` `Hash Table` `String` `Sliding Window`

Given two strings `s` and `p`, return an array of all the start indices of `p`'s in `s`. You may return the answer in any order.

 
#### Example 1:
> **Input:** s = "cbaebabacd", p = "abc" <br>
> **Output:** [0,6] <br>
> **Explanation:** <br>
>   The substring with start index = 0 is "cba", which is an anagram of "abc". <br>
>   The substring with start index = 6 is "bac", which is an anagram of "abc". <br>

#### Example 2:
> **Input:** s = "abab", p = "ab" <br>
> **Output:** [0,1,2] <br>
> **Explanation:** <br>
>   The substring with start index = 0 is "ab", which is an anagram of "ab". <br>
>   The substring with start index = 1 is "ba", which is an anagram of "ab". <br>
>   The substring with start index = 2 is "ab", which is an anagram of "ab". <br>

#### Constraints:
- `1 <= s.length, p.length <= 3 * 10^4`
- `s` and `p` consist of lowercase English letters.