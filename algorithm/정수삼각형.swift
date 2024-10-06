import Foundation

func integerTriangles() {
    let n = Int(readLine()!)!
    
    var triangle = [[Int]]()
    for _ in 0..<n {
        let row = readLine()!.split(separator: " ").map { Int($0)! }
        triangle.append(row)
    }
    
    var dp = triangle[n-1]
    
    for i in stride(from: n-2, through: 0, by: -1) {
        for j in 0..<triangle[i].count {
            dp[j] = triangle[i][j] + max(dp[j], dp[j+1])
        }
    }
    
    print(dp[0])
}
