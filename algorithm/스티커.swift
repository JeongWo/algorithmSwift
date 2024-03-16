import Foundation

func dpSolution7() {
    
    func maxStickerScore(_ stickers: [[Int]]) -> Int {
        let n = stickers[0].count
        var dp = Array(repeating: Array(repeating: 0, count: n), count: 3)
        
        dp[0][0] = stickers[0][0]
        dp[1][0] = stickers[1][0]
        
        for i in 1..<n {
            dp[0][i] = max(dp[1][i-1], dp[2][i-1]) + stickers[0][i]
            dp[1][i] = max(dp[0][i-1], dp[2][i-1]) + stickers[1][i]
            dp[2][i] = max(dp[0][i-1], dp[1][i-1])
        }
        return max(dp[0][n-1], dp[1][n-1], dp[2][n-1])
    }
    
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let n = Int(readLine()!)!
        var stickers = [[Int]]()
        for _ in 0..<2 {
            let row = readLine()!.split(separator: " ").map { Int($0)! }
            stickers.append(row)
        }
        let result = maxStickerScore(stickers)
        print(result)
    }
}
