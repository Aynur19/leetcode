# [281. Zigzag Iterator](https://leetcode.com/problems/zigzag-iterator/description/)
- **Solved**
- **Medium**
- **Topics:** `Iterator`

Given two 1d vectors, implement an iterator to return their elements alternately.

#### Example 1:
> **Input:** v1 = [1, 2] and v2 = [3, 4, 5, 6] <br>
> **Output:** [1, 3, 2, 4, 5, 6] <br>
> **Explanation:** By calling next repeatedly until hasNext returns false, the order of elements returned by next should be: [1, 3, 2, 4, 5, 6]. <br>

#### Example 2:
> **Input:** v1 = [1, 1, 1, 1] and v2 = [3, 4, 5, 6] <br>
> **Output:** [1, 3, 1, 4, 1, 5, 1, 6] <br>

**Follow-up:** How to generalize the solution to k arrays/iterators instead of just two?