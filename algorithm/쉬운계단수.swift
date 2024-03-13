import Foundation

func dpSolution4() {
    
    let modulus = 1000000000
    
    if let N = Int(readLine()!) {
        var dp = [[Int]](repeating: Array(repeating: 0, count: 10), count: N+1)
        
        for i in 1...9 {
            dp[1][i] = 1
        }
        
        if N > 1 {
            for i in 2...N {
                for j in 0...9 {
                    if j == 0 {
                        dp[i][0] = dp[i-1][1] % modulus
                    } else if j == 9 {
                        dp[i][9] = dp[i-1][8] % modulus
                    } else {
                        dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % modulus
                    }
                }
            }
        }
        
        var count = 0
        for i in 0...9 {
            count = (count+dp[N][i])%modulus
        }
        print(count)
    }
}
