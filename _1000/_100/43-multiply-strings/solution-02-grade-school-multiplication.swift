// Approach: Math, Simulation, grade school multiplication
// Time complexity: O(n * m)
// Space complexity: O(n + m)
class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }

        let a = Array(num1)
        let b = Array(num2)

        var result = Array(repeating: 0, count: a.count + b.count)

        for i in stride(from: a.count - 1, through: 0, by: -1) {
            for j in stride(from: b.count - 1, through: 0, by: -1) {

                let mul = Int(String(a[i]))! * Int(String(b[j]))!

                let p1 = i + j
                let p2 = i + j + 1

                let sum = mul + result[p2]

                result[p2] = sum % 10
                result[p1] += sum / 10
            }
        }

        var start = 0

        while start < result.count && result[start] == 0 {
            start += 1
        }

        return result[start...].map(String.init).joined()
    }
}