/**
https://leetcode.com/problems/rotate-image/

Time O(n^2)
Space O(1)

1. 沿著左上-右下對角線鏡像
2. 水平鏡像
*/
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let size = matrix.count

        for i in 0 ..< size {
            for j in i ..< size {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = tmp
            }
        }

        for i in 0 ..< size {
            let upper = size - 1
            for j in 0 ..< size / 2 {
                let tmp = matrix[i][j]
                matrix[i][j] = matrix[i][upper - j]
                matrix[i][upper - j] = tmp
            }
        }
    }
}