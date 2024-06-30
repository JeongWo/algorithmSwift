import Foundation

func lineUp() {
    
    func longestIncreasingSubsequence(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var dp = [Int](repeating: 1, count: nums.count)
        
        for i in 1..<nums.count {
            for j in 0..<i where nums[j] < nums[i] {
                dp[i] = max(dp[i], dp[j] + 1)
            }
        }
        
        return dp.max()!
    }
    
    let N = Int(readLine()!)!
    var children = [Int]()
    for _ in 0..<N {
        if let num = Int(readLine()!) {
            children.append(num)
        }
    }
    
    let lisLength = longestIncreasingSubsequence(children)
    
    let minMoves = N - lisLength
    print(minMoves)
}
