import Foundation

func whatIsDynamic() {
  
    let MOD = 1000000007
    
    if let nm = readLine()?.split(separator: " ").map({ Int($0)! }) {
        let n = nm[0]
        let m = nm[1]
        
        var dp = Array(repeating: Array(repeating: 0, count: m + 1), count: n + 1)
        
        dp[1][1] = 1
        
        for i in 1...n {
            for j in 1...m {
                if i == 1 && j == 1 {
                    continue
                }
                dp[i][j] = ((i > 1 ? dp[i-1][j] : 0)
                            + (j > 1 ? dp[i][j-1] : 0)
                            + (i > 1 && j > 1 ? dp[i-1][j-1] : 0)) % MOD
            }
        }
        
        print(dp[n][m])
    }
}
