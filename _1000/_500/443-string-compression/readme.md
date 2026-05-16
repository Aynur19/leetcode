# [443. String Compression](https://leetcode.com/problems/string-compression/description/)
- **Solved**
- **Medium**
- **Topics:** `Senior` `Two Pointers` `String`

Given an array of characters `chars`, compress it using the following algorithm:

Begin with an empty string `s`. For each group of consecutive repeating characters in `chars`:
- If the group's length is `1`, append the character to `s`.
- Otherwise, append the character followed by the group's length.

The compressed string `s` should not be returned separately, but instead, be stored in the input character array `chars`. Note that group lengths that are `10` or longer will be split into multiple characters in `chars`.

After you are done modifying the input array, return the new length of the array.

You must write an algorithm that uses only constant extra space.

Note: The characters in the array beyond the returned length do not matter and should be ignored.

 
#### Example 1:
> **Input:** chars = ["a","a","b","b","c","c","c"] <br>
> **Output:** 6 <br>
> **Explanation:** The groups are "aa", "bb", and "ccc". This compresses to "a2b2c3". <br>

#### Example 2:
> **Input:** chars = ["a"] <br>
> **Output:** 1 <br>
> **Explanation:** The only group is "a", which remains uncompressed since it's a single character. <br>

#### Example 3:
> **Input:** chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"] <br>
> **Output:** 4 <br>
> **Explanation:** The groups are "a" and "bbbbbbbbbbbb". This compresses to "ab12". <br>

#### Constraints:
- `1 <= chars.length <= 2000`
- `chars[i]` is a lowercase English letter, uppercase English letter, digit, or symbol.