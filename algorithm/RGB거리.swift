import Foundation

func RGBStreet() {
    
    let N = Int(readLine()!)!
    
    var cost = [[Int]]()
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        cost.append(input)
    }
    
    var dp = Array(repeating: [Int](repeating: 0, count: 3), count: N)
    
    dp[0][0] = cost[0][0]
    dp[0][1] = cost[0][1]
    dp[0][2] = cost[0][2]
    
    for i in 1..<N {
        dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + cost[i][0]
        dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + cost[i][1]
        dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + cost[i][2]
    }
    
    let result = min(dp[N-1][0], dp[N-1][1], dp[N-1][2])
    print(result)
}
