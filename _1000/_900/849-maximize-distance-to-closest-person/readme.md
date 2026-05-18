# [849. Maximize Distance to Closest Person](https://leetcode.com/problems/maximize-distance-to-closest-person/description/)
- **Solved**
- **Medium**
- **Topics:** `Senior` `Array` `Weekly Contest 88`

You are given an array representing a row of `seats` where `seats[i] = 1` represents a person sitting in the `i^th` seat, and `seats[i] = 0` represents that the `i^th` seat is empty (0-indexed).

There is at least one empty seat, and at least one person sitting.

Alex wants to sit in the seat such that the distance between him and the closest person to him is maximized. 

Return that maximum distance to the closest person.

 
#### Example 1:
> **Input:** seats = [1,0,0,0,1,0,1] <br>
> **Output:** 2 <br>
> **Explanation:**  <br>
>   If Alex sits in the second open seat (i.e. seats[2]), then the closest person has distance 2. <br>
>   If Alex sits in any other open seat, the closest person has distance 1. <br>
>   Thus, the maximum distance to the closest person is 2. <br>

#### Example 2:
> **Input:** seats = [1,0,0,0] <br>
> **Output:** 3 <br>
> **Explanation:**  <br>
>   If Alex sits in the last seat (i.e. seats[3]), the closest person is 3 seats away. <br>
>   This is the maximum distance possible, so the answer is 3. <br>

#### Example 3:
> **Input:** seats = [0,1] <br>
> **Output:** 1 <br>

#### Constraints:
- `2 <= seats.length <= 2 * 10^4`
- `seats[i]` is `0` or `1`.
- At least one seat is empty.
- At least one seat is occupied.