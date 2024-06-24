import Foundation

func stoneGame() {
    if let input = readLine(), let N = Int(input) {
        var dp = Array(repeating: false, count: N + 1)
        
        dp[1] = true
        if N >= 2 {
            dp[2] = false
        }
        if N >= 3 {
            dp[3] = true
        }
        
        if N >= 4 {
            for i in 4...N {
                dp[i] = !dp[i - 1] || !dp[i - 3]
            }
        }
        
        print(dp[N] ? "SK" : "CY")
    }
}
