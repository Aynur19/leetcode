# [205. Isomorphic Strings](https://leetcode.com/problems/isomorphic-strings/description/)
- **Solved**
- **Easy**
- **Topics:** `Hash Table` `String`

Given two strings `s` and `t`, determine if they are isomorphic.

Two strings `s` and `t` are isomorphic if the characters in `s` can be replaced to get `t`.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

 
#### Example 1:
> **Input:** s = "egg", t = "add" <br>
> **Output:** true <br>
> **Explanation:** <br>
>   The strings s and t can be made identical by:
>   - Mapping `'e'` to `'a'`.
>   - Mapping `'g'` to `'d'`.

#### Example 2:
> **Input:** s = "f11", t = "b23" <br>
> **Output:** false <br>
> **Explanation:** <br>
>   The strings `s` and `t` can not be made identical as `'1'` needs to be mapped to both `'2'` and `'3'`.

#### Example 3:
> **Input:** s = "paper", t = "title" <br>
> **Output:** true <br>

#### Constraints:
- `1 <= s.length <= 5 * 10^4`
- `t.length == s.length`
- `s` and `t` consist of any valid ascii character.