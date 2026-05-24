# [974. Subarray Sums Divisible by K](https://leetcode.com/problems/subarray-sums-divisible-by-k/description/)
- **Solved**
- **Medium**
- **Topics:** `Senior Staff` `Array` `Hash Table` `Prefix Sum` `Weekly Contest 119`

Given an integer array `nums` and an integer k`, return the number of non-empty subarrays that have a sum divisible by `k`.

A subarray is a contiguous part of an array.


#### Example 1:
> **Input:** nums = [4,5,0,-2,-3,1], k = 5 <br>
> **Output:** 7 <br>
> **Explanation:** There are 7 subarrays with a sum divisible by k = 5: <br>
> [4, 5, 0, -2, -3, 1], [5], [5, 0], [5, 0, -2, -3], [0], [0, -2, -3], [-2, -3] <br>

#### Example 2:
> **Input:** nums = [5], k = 9 <br>
> **Output:** 0 <br>

#### Constraints:
- `1 <= nums.length <= 3 * 10^4`
- `-10^4 <= nums[i] <= 10^4`
- `2 <= k <= 10^4`