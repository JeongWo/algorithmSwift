import Foundation

func dpSolution6() {
    
    if let N = Int(readLine()!) {
        var dp = [[Int]](repeating: Array(repeating: 0, count: 2), count: N+1)
        
        if N == 1 {
            print(1)
        } else {
            dp[1][0] = 0
            dp[1][1] = 1
            
            for i in 2...N {
                dp[i][0] = dp[i-1][0] + dp[i-1][1]
                dp[i][1] = dp[i-1][0]
            }
            print(dp[N][0] + dp[N][1])
        }
    }
}
