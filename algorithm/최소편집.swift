import Foundation


func minEdit() {
    func minEditDistance(_ A: String, _ B: String) -> Int {
        let n = A.count
        let m = B.count
        
        let a = Array(A)
        let b = Array(B)
        
        var dp = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)
        
        for i in 0...n {
            dp[i][0] = i
        }
        
        for j in 0...m {
            dp[0][j] = j
        }
        
        for i in 1...n {
            for j in 1...m {
                if a[i - 1] == b[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1]
                } else {
                    dp[i][j] = min(dp[i - 1][j - 1], dp[i][j - 1], dp[i - 1][j]) + 1
                }
            }
        }
        
        return dp[n][m]
    }
    
    if let A = readLine(), let B = readLine() {
        print(minEditDistance(A, B))
    }
}
