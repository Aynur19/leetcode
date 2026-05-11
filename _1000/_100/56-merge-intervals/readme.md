# [56. Merge Intervals](https://leetcode.com/problems/merge-intervals/description/)
- **Solved**
- **Medium**
- **Topics:** `Array` `Sorting`

Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

 
#### Example 1:
> **Input:** intervals = [[1,3],[2,6],[8,10],[15,18]] <br>
> **Output:** [[1,6],[8,10],[15,18]] <br>
> **Explanation:** Since intervals [1,3] and [2,6] overlap, merge them into [1,6]. <br>

#### Example 2:
> **Input:** intervals = [[1,4],[4,5]] <br>
> **Output:** [[1,5]] <br>
> **Explanation:** Intervals [1,4] and [4,5] are considered overlapping. <br>

#### Example 3:
> **Input:** intervals = [[4,7],[1,4]] <br>
> **Output:** [[1,7]] <br>
> **Explanation:** Intervals [1,4] and [4,7] are considered overlapping. <br>

#### Constraints:
- `1 <= intervals.length <= 10^4`
- `intervals[i].length == 2`
- `0 <= start_i <= end_i <= 10^4`