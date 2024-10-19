import Foundation

func pizza() {
    if let input = readLine(), let N = Int(input) {
        if N == 1 {
            print(0)
        } else {
            var dp = Array(repeating: 0, count: N + 1)
            
            for i in 2...N {
                for j in 1..<i {
                    dp[i] = max(dp[i], dp[j] + dp[i - j] + j * (i - j))
                }
            }
            
            print(dp[N])
        }
    }
}
