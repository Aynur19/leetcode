// Approach: Two Pointers
// Time complexity: O(n + m)
// Space complexity: O(k)
class Solution {
    func findRLEArray(_ encoded1: [[Int]], _ encoded2: [[Int]]) -> [[Int]] {
        var result: [[Int]] = []

        var i = 0
        var j = 0

        var freq1 = encoded1[0][1]
        var freq2 = encoded2[0][1]

        while i < encoded1.count && j < encoded2.count {
            let product = encoded1[i][0] * encoded2[j][0]

            let commonFreq = min(freq1, freq2)

            // Merge with previous segment if product is the same
            if !result.isEmpty && result[result.count - 1][0] == product {
                result[result.count - 1][1] += commonFreq
            } else {
                result.append([product, commonFreq])
            }

            freq1 -= commonFreq
            freq2 -= commonFreq

            if freq1 == 0 {
                i += 1
                if i < encoded1.count {
                    freq1 = encoded1[i][1]
                }
            }

            if freq2 == 0 {
                j += 1
                if j < encoded2.count {
                    freq2 = encoded2[j][1]
                }
            }
        }

        return result
    }
}