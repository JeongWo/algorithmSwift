import Foundation

func insertBox() {
    
    func longestIncreasingSubsequence(_ sizes: [Int]) -> Int {
        let n = sizes.count
        var dp = Array(repeating: 1, count: n)
        
        for i in 1..<n {
            for j in 0..<i {
                if sizes[j] < sizes[i] {
                    dp[i] = max(dp[i], dp[j] + 1)
                }
            }
        }
        
        return dp.max()!
    }
    
    let n = Int(readLine()!)!
    let sizes = readLine()!.split(separator: " ").map { Int($0)! }
    
    print(longestIncreasingSubsequence(sizes))
    
}
