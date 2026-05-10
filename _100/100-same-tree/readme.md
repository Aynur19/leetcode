# [100. Same Tree](https://leetcode.com/problems/same-tree/description/)
- **Solved**
- **Easy**
- **Topics:** `Tree` `Depth-First Search` `Breadth-First Search` `Binary Tree`

Given the roots of two binary trees p and q, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

#### Example 1:
> **Input:** p = [1,2,3], q = [1,2,3] <br>
> **Output:** true <br>

#### Example 2:
> **Input:** p = [1,2], q = [1,null,2] <br>
> **Output:** false <br>

#### Example 3:
> **Input:** p = [1,2,1], q = [1,1,2] <br>
> **Output:** false <br>

#### Constraints:
- The number of nodes in both trees is in the range `[0, 100]`.
- `-10^4 <= Node.val <= 10^4`