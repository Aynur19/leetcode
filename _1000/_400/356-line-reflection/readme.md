[356. Line Reflection](https://leetcode.com/problems/line-reflection/description/)
- **Medium**
- **Topics:**

Given n points on a 2D plane, find if there is such a line parallel to the y-axis that reflects the given points symmetrically.

In other words, answer whether there exists a vertical line x = c such that reflecting every point across the line results in another point in the set.

#### Example 1:
> **Input:** points = [[1,1],[-1,1]] <br>
> **Output:** true <br>
> **Explanation:** There is a line x = 0 that reflects the points symmetrically. <br>

#### Example 2:
> **Input:** points = [[1,1],[-1,-1]] <br>
> **Output:** false <br>
> **Explanation:** The reflected point of (1,1) across x = 0 is (-1,1), which is not in the set. <br>

#### Constraints:
- `1 <= points.length <= 10^4`
- `-10^8 <= xi, yi <= 10^8`

**Follow up:** Could you do better than O(n^2)?