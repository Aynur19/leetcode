// Approach: Math
// Time complexity: O(sqrt(n))
// Space complexity: O(1)
class Solution {
    func numSquares(_ n: Int) -> Int {
        if isSquare(n) {
            return 1
        }

        var temp = n
        while temp % 4 == 0 {
            temp /= 4
        }

        if temp % 8 == 7 {
            return 4
        }

        var i = 1
        while i * i <= n {
            if isSquare(n - i * i) {
                return 2
            }

            i += 1
        }

        return 3
    }

    func isSquare(_ x: Int) -> Bool {
        let r = Int(Double(x).squareRoot())

        return r * r == x
    }
}