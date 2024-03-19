import Foundation

func dpSolution9() {
    
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").compactMap{Int($0)}
    
    var dp = Array(repeating: 1, count: N)
    
    for i in 0..<N {
        for j in 0..<i {
            if A[j] > A[i] {
                dp[i] = max(dp[i], dp[j]+1)
            }
        }
    }
    print(dp.max() ?? 0)
}
