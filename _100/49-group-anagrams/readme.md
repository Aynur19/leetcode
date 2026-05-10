# [49. Group Anagrams](https://leetcode.com/problems/group-anagrams/description/)
- **Solved**
- **Medium**
- **Topics:** `Array` `Hash Table` `String` `Sorting`

Given an array of strings `strs`, group the together. You can return the answer in any order.


#### Example 1:
> **Input:** strs = ["eat","tea","tan","ate","nat","bat"] <br>
> **Output:** [["bat"],["nat","tan"],["ate","eat","tea"]] <br>
> **Explanation:** <br>
>   There is no string in strs that can be rearranged to form `"bat"`. <br>
>   The strings `"nat"` and `"tan"` are anagrams as they can be rearranged to form each other. <br>
>   The strings `"ate"`, `"eat"`, and `"tea"` are anagrams as they can be rearranged to form eachother.

#### Example 2:
> **Input:** strs = [""] <br>
> **Output:** [[""]] <br>

#### Example 3:
> **Input:** strs = ["a"] <br>
> **Output:** [["a"]] <br>

#### Constraints:
- `1 <= strs.length <= 104`
- `0 <= strs[i].length <= 100`
- `strs[i]` consists of lowercase English letters.