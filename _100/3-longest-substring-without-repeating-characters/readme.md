# [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/description/)

- **Solved**
- **Medium**
- **Topics:** `Staff` `Hash Table` `String` `Sliding Window`

Given a string s, find the length of the longest without duplicate characters.
 

#### Example 1:
> **Input:** s = "abcabcbb" <br>
> **Output:** 3 <br>
> **Explanation:** The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.

#### Example 2:
> **Input:** s = "bbbbb" <br>
> **Output:** 1 <br>
> **Explanation:** The answer is "b", with the length of 1.

#### Example 3:
> **Input:** s = "pwwkew" <br>
> **Output:** 3 <br>
> **Explanation:** The answer is "wke", with the length of 3. <br>
> Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

 
#### Constraints:
- `0 <= s.length <= 5 * 10^4`
- `s` consists of English letters, digits, symbols and spaces.


## Решение 1 — Sliding Window + Count HashMap
### Алгоритм решения
> 0. преобразуем строку в массив символов
> 1. создаем:  <br>
> 1.1. hashmap для хранения количества символов в текущем окне <br>
> 1.2. два указателя: `left` — начало окна, `right` — конец окна <br>
>
> 2. двигаем `right` по строке: <br>
> 2.1. если текущий символ уже есть в окне: <br>
> 2.1.1. двигаем `left` вправо <br>
> 2.1.2 уменьшаем count символов <br>
> 2.1.3 продолжаем пока дубликат не исчезнет <br>  
> 2.2. добавляем текущий символ в hashmap <br>
> 2.3. обновляем максимальную длину окна <br>
> 3. возвращаем результат

### Сложность по времени
* каждый указатель проходит строку максимум один раз

Итог: `O(n)`

### Сложность по памяти
* массив символов: `O(n)`
* hashmap: `O(charset)` → обычно считается `O(1)`

Итог: `O(n)`


## Решение 2 — HashMap + Last Seen Index
### Алгоритм решения
> 0. создаем hashmap: `[символ: последний индекс символа]`
> 1. проходим по строке
> 2. для каждого символа: <br>
> 2.1. если символ уже встречался: <br>
> 2.1.1. обновляем левую границу окна <br>
> 2.1.2. берем максимум между: текущей границей & последним индексом символа <br>
> 2.2. обновляем индекс текущего символа в hashmap <br>
> 2.3. обновляем максимальную длину подстроки <br>
> 3. возвращаем результат


### Сложность по времени
* один проход по строке
* операции hashmap — `O(1)` в среднем

Итог: `O(n)`


## Сложность по памяти
* hashmap хранит индексы символов

Итог: `O(charset)` или `O(1)` если считать charset константным.
