# [763. Partition Labels](https://leetcode.com/problems/partition-labels/description/)
- **Solved**
- **Medium**
- **Topics:** `Senior Staff` `Hash Table` `Two Pointers` `String` `Greedy` `Weekly Contest 67`

You are given a string `s`. We want to partition the string into as many parts as possible so that each letter appears in at most one part. For example, the string `"ababcc"` can be partitioned into `["abab", "cc"]`, but partitions such as `["aba", "bcc"]` or `["ab", "ab", "cc"]` are invalid.

Note that the partition is done so that after concatenating all the parts in order, the resultant string should be `s`.

Return a list of integers representing the size of these parts.


#### Example 1:
> **Input:** s = "ababcbacadefegdehijhklij" <br>
> **Output:** [9,7,8] <br>
> **Explanation:** <br>
>   The partition is "ababcbaca", "defegde", "hijhklij". <br>
>   This is a partition so that each letter appears in at most one part. <br>
>   A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits s into less parts. <br>

#### Example 2:
> **Input:** s = "eccbbbbdec" <br>
> **Output:** [10] <br>

#### Constraints:
- `1 <= s.length <= 500`
- `s` consists of lowercase English letters.