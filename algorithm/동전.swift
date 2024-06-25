import Foundation

func coin() {
    
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let N = Int(readLine()!)!
        let coins = readLine()!.split(separator: " ").map { Int(String($0))! }
        let M = Int(readLine()!)!
        
        var dp = Array(repeating: 0, count: M + 1)
        dp[0] = 1
        
        for coin in coins {
            if coin <= M {
                for i in coin...M {
                    dp[i] += dp[i - coin]
                }
            }
        }
        
        print(dp[M])
    }
}
