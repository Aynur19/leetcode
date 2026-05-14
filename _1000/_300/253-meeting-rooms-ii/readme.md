# 253 [Meeting Rooms II](https://leetcode.com/problems/meeting-rooms-ii/)
- **Solved**
- **Easy**
- **Topics:** `Heap` `Greedy` `Sweep Line` `Sort`

#### Description (from [LintCode](https://www.lintcode.com/problem/919/))
Given an array of meeting time intervals consisting of start and end times [[s1,e1],[s2,e2],...] (si < ei), find the minimum number of conference rooms required.

#### Example: 1
> **Input:** intervals = [(0,30),(5,10),(15,20)] <br>
> **Output:** 2 <br>
> **Explanation:** We need two meeting rooms <br>
>   room1: (0,30) <br>
>   room2: (5,10),(15,20) <br>

#### Example 2:
> **Input:** intervals = [(2,7)] <br>
> **Output:** 1 <br>
> **Explanation:** Only need one meeting room <br>

#### Constraints:
- `(0,8),(8,10)` is not conflict at `8`