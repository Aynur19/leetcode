# [1868. Product of Two Run-Length Encoded Arrays](https://leetcode.com/problems/product-of-two-run-length-encoded-arrays/description/)
- **Medium**
- **Topics:** `Array` `Two Pointers`

Run-length encoding is a compression algorithm that allows an integer array `nums` with many segments of consecutive repeated numbers to be represented by a (generally smaller) 2D array `encoded`.

Each `encoded[i] = [val_i, freq_i]` describes the `i`-th segment of repeated numbers in `nums`, where `val_i` is repeated `freq_i` times.

For example, `nums = [1,1,1,2,2,2,2,2]` is represented by `encoded = [[1,3],[2,5]]`.

The product of two run-length encoded arrays `encoded1` and `encoded2` can be calculated using the following steps:

1. Expand both `encoded1` and `encoded2` into the full arrays `nums1` and `nums2`.
2. Create a new array `prodNums` of length `nums1.length` where `prodNums[i] = nums1[i] * nums2[i]`.
3. Compress `prodNums` into a run-length encoded array.

You are given two run-length encoded arrays `encoded1` and `encoded2` representing full arrays `nums1` and `nums2` respectively. Both full arrays have the same length.

Return the product of `encoded1` and `encoded2`.

**Note:** Compression should be done such that the resulting run-length encoded array has the minimum possible length.

#### Example 1:
> **Input:** encoded1 = [[1,3],[2,3]], encoded2 = [[6,3],[3,3]] <br>
> **Output:** [[6,6]] <br>
> **Explanation:** <br>
> encoded1 expands to [1,1,1,2,2,2]. <br>
> encoded2 expands to [6,6,6,3,3,3]. <br>
> prodNums = [6,6,6,6,6,6]. <br>
> Compressed result: [[6,6]]. <br>

#### Example 2:
> **Input:** encoded1 = [[1,3],[2,1],[3,2]], encoded2 = [[2,3],[3,3]] <br>
> **Output:** [[2,3],[6,1],[9,2]] <br>
> **Explanation:** <br>
> encoded1 expands to [1,1,1,2,3,3]. <br>
> encoded2 expands to [2,2,2,3,3,3]. <br>
> prodNums = [2,2,2,6,9,9]. <br>
> Compressed result: [[2,3],[6,1],[9,2]]. <br>

#### Constraints:
- `1 <= encoded1.length, encoded2.length <= 10^5`
- `encoded1[i].length == 2`
- `encoded2[j].length == 2`
- `1 <= val_i, freq_i <= 10^4`
- `1 <= val_j, freq_j <= 10^4`
- The full arrays represented by `encoded1` and `encoded2` have the same length.


