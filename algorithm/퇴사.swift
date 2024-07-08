import Foundation

func leaving() {
    
    func maximumProfit() {
        let N = Int(readLine()!)!
        var T = [Int]()
        var P = [Int]()
        
        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            T.append(input[0])
            P.append(input[1])
        }
        
        var dp = [Int](repeating: 0, count: N + 1)
        
        for i in 1...N {
            dp[i] = dp[i-1]
            for j in stride(from: i - 1, through: 0, by: -1) {
                if j + T[j] <= i {
                    dp[i] = max(dp[i], dp[j] + P[j])
                }
            }
        }
        print(dp[N])
    }
    maximumProfit()
}
