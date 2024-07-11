import Foundation


func MoveClosetDoors() {
    
    func minMoves(n: Int, open1: Int, open2: Int, usage: [Int]) -> Int {
        
        let m = usage.count
        var dp = Array(repeating: Array(repeating: Array(repeating: Int.max, count: n + 1), count: n + 1), count: m + 1)
        
        dp[0][open1][open2] = 0
        
        for i in 0..<m {
            let target = usage[i]
            for j in 1...n {
                for k in 1...n {
                    if dp[i][j][k] != Int.max {
                        if j != target && k != target {
                            dp[i + 1][target][k] = min(dp[i + 1][target][k], dp[i][j][k] + abs(j - target))
                            dp[i + 1][j][target] = min(dp[i + 1][j][target], dp[i][j][k] + abs(k - target))
                        } else if j == target {
                            dp[i + 1][j][k] = min(dp[i + 1][j][k], dp[i][j][k])
                        } else if k == target {
                            dp[i + 1][j][k] = min(dp[i + 1][j][k], dp[i][j][k])
                        }
                    }
                }
            }
        }
        
        var result = Int.max
        for j in 1...n {
            for k in 1...n {
                result = min(result, dp[m][j][k])
            }
        }
        
        return result
    }
    
    if let n = Int(readLine()!),
       let initialOpen = readLine()?.split(separator: " ").map({ Int($0)! }),
       let m = Int(readLine()!) {
        var usage = [Int]()
        for _ in 0..<m {
            if let num = Int(readLine()!) {
                usage.append(num)
            }
        }
        let result = minMoves(n: n, open1: initialOpen[0], open2: initialOpen[1], usage: usage)
        print(result)
    }
}
