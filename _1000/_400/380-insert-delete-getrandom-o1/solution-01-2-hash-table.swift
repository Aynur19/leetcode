// Approach: 2 Hash Table
// Time complexity: insert\remove\getRandom => O(n)
// Space complexity: O(1)
class RandomizedSet {
    private var valuesKeys = [Int: Int]()
    private var keysValues = [Int: Int]()

    init() {}
    
    func insert(_ val: Int) -> Bool {
        if valuesKeys[val] != nil {
            return false
        }

        let key = valuesKeys.count
        valuesKeys[val] = key
        keysValues[key] = val

        return true 
    }
    
    func remove(_ val: Int) -> Bool {
        guard let key = valuesKeys[val] else {
            return false
        }

        let lastKey = valuesKeys.count - 1
        if lastKey != key {
            let value = keysValues[lastKey]!
            keysValues[key] = value
            valuesKeys[value] = key
        } 
        
        keysValues[lastKey] = nil
        valuesKeys[val] = nil

        return true
    }
    
    func getRandom() -> Int {
        let key = Int.random(in: 0...(valuesKeys.count - 1))
        
        return keysValues[key]!
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */