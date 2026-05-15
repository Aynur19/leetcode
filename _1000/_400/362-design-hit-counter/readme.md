# [362. Design Hit Counter](https://leetcode.com/problems/design-hit-counter/description/)
- **Medium**
- **Topics:** `Array` `Queue` `Doble Linked List`

Design a hit counter which counts the number of hits received in the past 5 minutes (i.e., the past 300 seconds).

Your system should accept a timestamp parameter (in seconds granularity), and you may assume that calls are being made to the system in chronological order (that is, timestamp is monotonically increasing). Several hits may arrive roughly at the same time.

Implement the `HitCounter` class:
- `HitCounter()` Initializes the object of the hit counter system.
- `void hit(int timestamp)` Records a hit that happened at timestamp (in seconds). Multiple hits may happen at the same timestamp.
- ~int getHits(int timestamp)~ Returns the number of hits in the past 5 minutes from timestamp (i.e., the past 300 seconds).

#### Example 1:
> **Input:** <br>
>   ["HitCounter", "hit", "hit", "hit", "getHits", "hit", "getHits", "getHits"] <br>
>   [[], [1], [2], [3], [4], [300], [300], [301]] <br>
> **Output:** <br>
>   [null, null, null, null, 3, null, 4, 3] <br>
> **Explanation:** <br>
>   HitCounter counter = new HitCounter(); <br>
>   counter.hit(1); <br>
>   counter.hit(2); <br>
>   counter.hit(3); <br>
>   counter.getHits(4);   // return 3 <br>
>   counter.hit(300); <br>
>   counter.getHits(300); // return 4 <br>
>   counter.getHits(301); // return 3 <br>

#### Constraints:
- `1 <= timestamp <= 2 * 10^9`
- All the calls are being made to the system in chronological order.
- At most 300 calls will be made to `hit` and `getHits`.