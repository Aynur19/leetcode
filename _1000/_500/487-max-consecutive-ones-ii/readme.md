# [487. Max Consecutive Ones II](https://leetcode.com/problems/max-consecutive-ones-ii/description/)
- **Solved**
- **Medium**
- **Topics:** `Array` `Dynamic Programming` `Sliding Window`

Given a binary array `nums`, return the maximum number of consecutive `1`s in the array if you can flip at most one `0`.

---

#### Example 1:
> **Input:** nums = [1,0,1,1,0] <br>
> **Output:** 4 <br>
> **Explanation:**  
> - If we flip the first `0`, nums becomes `[1,1,1,1,0]`  
> - If we flip the second `0`, nums becomes `[1,0,1,1,1]`  
> The maximum number of consecutive `1`s is `4`.

#### Example 2:
> **Input:** nums = [1,0,1,1,0,1] <br>
> **Output:** 4 <br>

---

#### Constraints:
- `1 <= nums.length <= 10^5`
- `nums[i]` is either `0` or `1`

---

#### Follow up:
What if the input numbers come in one by one as an infinite stream?  
In other words, you can't store all numbers coming from the stream as it's too large to hold in memory.

---
