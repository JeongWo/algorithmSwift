import Foundation

func moving() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let N = nm[0]
    let M = nm[1]
    var candies = [[Int]]()
    
    for _ in 0..<N {
        let row = readLine()!.split(separator: " ").map { Int($0)! }
        candies.append(row)
    }
    
    let result = maxCandies(N: N, M: M, candies: candies)
    print(result)
    
    func maxCandies(N: Int, M: Int, candies: [[Int]]) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)
        
        for r in 1...N {
            for c in 1...M {
                dp[r][c] = candies[r-1][c-1] + max(dp[r-1][c], dp[r][c-1], dp[r-1][c-1])
            }
        }
        return dp[N][M]
    }
}

