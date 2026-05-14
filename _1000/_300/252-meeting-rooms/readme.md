# 252 [Meeting Rooms](https://leetcode.com/problems/meeting-rooms/)
- **Solved**
- **Easy**
- **Topics:** `Sorting`

#### Description (from [LintCode](https://www.lintcode.com/problem/920/))
Given an array of meeting time intervals consisting of start and end times `[(s1,e1),(s2,e2),...] (si < ei)`, determine if a person could attend all meetings.


#### Example 1:
> **Input:** intervals = [(0,30),(5,10),(15,20)] <br>
> **Output:** false <br>
> **Explanation:** (0,30), (5,10) and (0,30),(15,20) will conflict <br>

#### Example 2
> **Input:** intervals = [(5,8),(9,15)] <br>
> **Output:** true <br>
> **Explanation:** Two times will not conflict  <br>

#### Constraints:
- `0 ≤ intervals.length ≤ 10^4`
- `intervals[i].length == 2` 
- `0 ≤ start_i < end_i ≤ 10^6`
- `[(0,8), (8,10)]` is not conflict at `8`