import Foundation

func hello() {
    
    let N = Int(readLine()!)!
    let L = readLine()!.split(separator: " ").map { Int($0)! }
    let J = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dp = [Int](repeating: 0, count: 101)
    
    for i in 0..<N {
        let loss = L[i]
        let joy = J[i]
        
        for j in stride(from: 100, through: loss + 1, by: -1) {
            dp[j] = max(dp[j], dp[j - loss] + joy)
        }
    }
    
    let result = dp[1...100].max()!
    print(result)
    
}
