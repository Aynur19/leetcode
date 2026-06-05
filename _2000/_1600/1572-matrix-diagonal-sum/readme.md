# [1572. Matrix Diagonal Sum](https://leetcode.com/problems/matrix-diagonal-sum/description/)
- **Solved**
- **Easy**
- **Topics:** `Mid Level` `Array` `Matrix` `Biweekly Contest 34`

Given a square matrix `mat`, return the sum of the matrix diagonals.

Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.


#### Example 1:
> **Input:** mat = [[1,2,3], <br>
>                   [4,5,6], <br>
>                   [7,8,9]] <br>
> **Output:** 25 <br>
> **Explanation:** Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25 <br>
>     Notice that element mat[1][1] = 5 is counted only once. <br>

#### Example 2:
> **Input:** mat = [[1,1,1,1], <br>
>                   [1,1,1,1], <br>
>                   [1,1,1,1], <br>
>                   [1,1,1,1]] <br>
> **Output:** 8 <br>

#### Example 3:
> **Input:** mat = [[5]] <br>
> **Output:** 5 <br>

#### Constraints:
- `n == mat.length == mat[i].length`
- `1 <= n <= 100`
- `1 <= mat[i][j] <= 100`