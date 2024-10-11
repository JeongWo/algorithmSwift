import Foundation

func buyCard2() {
    let N = Int(readLine()!)!
    let prices = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dp = Array(repeating: Int.max, count: N + 1)
    dp[0] = 0
    
    for i in 1...N {
        for j in 1...i {
            dp[i] = min(dp[i], dp[i - j] + prices[j - 1])
        }
    }
    
    print(dp[N])
}
