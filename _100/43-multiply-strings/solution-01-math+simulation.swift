// Approach: Math, Simulation
// Time complexity: O(n * m)
// Space complexity: O(n + m)
class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        let numReversed1 = Array(num1.reversed())
        let numReversed2 = Array(num2.reversed())
        var result = [Int]()
        var tens = 0
        var sum = 0

        for i in numReversed1.indices {
            for j in numReversed2.indices {
                let product = numReversed1[i].wholeNumberValue! * numReversed2[j].wholeNumberValue! + tens
                let index = i + j

                if result.count > index {
                    sum = result[index] + product
                    result[index] = sum % 10
                } else {
                    sum = product
                    result.append(sum % 10)
                }

                tens = sum / 10
            }

            if tens > 0 {
                result.append(tens)
                tens = 0
            }
        } 

        while result.count > 1,
              let last = result.last,
              last == 0 
        {
            result.removeLast()
        }

        return String(result.map { String($0) }.joined().reversed())
    }
}