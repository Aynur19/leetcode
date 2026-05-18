# [652. Find Duplicate Subtrees](https://leetcode.com/problems/find-duplicate-subtrees/description/)
- **Solved**
- **Medium**
- **Topics:** `Staff` `Hash Table` `Tree` `Depth-First Search` `Binary Tree`

Given the `root` of a binary tree, return all duplicate subtrees.

For each kind of duplicate subtrees, you only need to return the root node of any one of them.

Two trees are duplicate if they have the same structure with the same node values.

 
#### Example 1:
> **Input:** root = [1,2,3,4,null,2,4,null,null,4] <br>
> **Output:** [[2,4],[4]] <br>

#### Example 2:
> **Input:** root = [2,1,1] <br>
> **Output:** [[1]] <br>

#### Example 3:
> **Input:** root = [2,2,2,3,null,3,null] <br>
> **Output:** [[2,3],[3]] <br>

#### Constraints:
- The number of the nodes in the tree will be in the range `[1, 5000]`
- `-200 <= Node.val <= 200`