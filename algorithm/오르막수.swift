import Foundation

func dpSolution5() {
    
    if let N = Int(readLine()!) {
        let modulus = 10007
        var dp = [[Int]](repeating: Array(repeating: 0, count: 10), count: N+1)
        var count = 0
        
        for i in 0...9 {
            dp[1][i] = 1
        }
        
        if N > 1{
            
            for i in 2...N {
                for j in 0...9 {
                    for k in 0...j {
                        dp[i][j] = (dp[i][j] + dp[i-1][k]) % modulus
                    }
                }
            }
        }
        
        for i in 0...9 {
            count = (count+dp[N][i]) % modulus
        }
        
        print(count)
        
    }
}
