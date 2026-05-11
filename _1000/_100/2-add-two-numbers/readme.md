# [2. Add Two Numbers](https://leetcode.com/problems/add-two-numbers/description/)

- **Solved**
- **Medium**
- **Topics:** `Principal` `Linked List` `Math` `Recursion`

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

#### Example 1:
> **Input:** l1 = [2,4,3], l2 = [5,6,4]
> **Output:** [7,0,8]
> **Explanation:** 342 + 465 = 807.

#### Example 2:
> **Input:** l1 = [0], l2 = [0]
> **Output:** [0]

#### Example 3:
> **Input:** l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
> **Output:** [8,9,9,9,0,0,0,1]


#### Constraints:
- The number of nodes in each linked list is in the range `[1, 100]`.
- `0 <= Node.val <= 9`
- It is guaranteed that the list represents a number that does not have leading zeros.


## Решение 1
### Алгоритм решения
> 0. создаем: <br>
>   0.1. указатели для обхода обоих списков <br>
>   0.2. `dummy node` для хранения начала результирующего списка <br>
>   0.3. указатель `tmp` для построения результата <br>
>   0.4. переменную `carry/value` для хранения переноса при сложении
>
> 1. пока хотя бы в одном списке есть элементы: <br>
>   1.1. получаем сумму текущих значений из обоих списков (если одного списка уже нет — используем 0) <br>
>   1.2. прибавляем carry от предыдущего сложения <br>
>   1.3. создаем новый node со значением: `sum % 10` и добавляем его в результирующий список <br>
>   1.4. обновляем carry: `carry = sum / 10` <br>
>   1.5. сдвигаем указатели обоих списков вперед
>
> 2. после завершения цикла: <br>
>   2.1. если carry > 0 — добавляем еще один node
>
> 3. возвращаем результат начиная с: `dummy.next`

### Сложность по времени
* `O(max(n, m))` где:
    * `n` — длина первого списка
    * `m` — длина второго списка

Мы проходим каждый список только один раз.

Итог: `O(max(n, m))`

### Сложность по памяти
Дополнительная память:
* несколько указателей
* переменная carry/value

Все это занимает константную память.

Итог: `O(1)`, если не учитывать память под результирующий linked list.

