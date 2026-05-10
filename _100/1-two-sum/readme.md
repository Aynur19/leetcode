# [1. Two Sum](https://leetcode.com/problems/two-sum/description/)
- **Solved**
- **Level:** Easy
- **Topics:** `Junior` `Array` `Hash Table`

Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.


#### Example 1:
> **Input:** nums = [2,7,11,15], target = 9 <br>
> **Output:** [0,1] <br>
> **Explanation:** Because nums[0] + nums[1] == 9, we return [0, 1].

#### Example 2:
> **Input:** nums = [3,2,4], target = 6 <br>
> **Output:** [1,2]

#### Example 3:
> **Input:** nums = [3,3], target = 6 <br>
> **Output:** [0,1]

 #### Constraints:
- `2 <= nums.length <= 10^4`
- `-10^9 <= nums[i] <= 10^9`
- `-10^9 <= target <= 10^9`
- **Only one valid answer exists.**

**Follow-up:** Can you come up with an algorithm that is less than `O(n^2)` time complexity?


## Решение 1
### Алгоритм решения
> 0. создаем словарь для хранения индекса конкретного числа [число:индекс в массиве] 
> 1. проходимся по всем числам из массива <br>
>   1.1. получаем diff - разность таргета и текущего числа <br>
>   1.2. если в словаре есть значение для ключа diff - возвращаем массив - [идекс текущего числа, индекс числа diff из словаря] <br>
>   1.3. иначе в словарь добавляем наовое значение; ключ - текущее число, значение - индекс текущего числа из массива
> 2. если при переборе ничего не вернули - возвращаем пустой массив (по ограничениям задачи гарантируется 1 решение)    

#### Сложность по памяти: 
* `O(n)` - в худшем случае словарь хранит все элементы массива <br>

Итог: `O(n)`

#### Сложность по времени:
* `O(n)` - перебор по массиву <br> 
* `O(1)` - в среднем, чтнеие и запись данных из словаря <br>

Итог: `O(n) * O(1)` => `O(n)`