// Approach: 2 Hash Table
// Time complexity: insert\remove\getRandom => O(n)
// Space complexity: O(1)
class RandomizedSet {
    private var values = [Int]()
    private var indexes = [Int: Int]()

    func insert(_ val: Int) -> Bool {
        guard indexes[val] == nil else {
            return false
        }

        indexes[val] = values.count
        values.append(val)

        return true
    }

    func remove(_ val: Int) -> Bool {
        guard let index = indexes[val] else {
            return false
        }

        let last = values.last!

        values[index] = last
        indexes[last] = index

        values.removeLast()
        indexes[val] = nil

        return true
    }

    func getRandom() -> Int {
        values.randomElement()!
    }
}