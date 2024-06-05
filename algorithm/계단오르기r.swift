import Foundation

func ClimbingStairs() {
    
    let n = Int(readLine()!)!
    var arr = [0]
    
    for _ in 0..<n {
        arr.append(Int(readLine()!)!)
    }
    
    var dp = Array(repeating: 0, count: 301)
    
    if n == 1 {
        print(arr[1])
    } else if n == 2 {
        print(arr[1] + arr[2])
    } else if n == 3 {
        print(max(arr[1]+arr[3], arr[2]+arr[3]))
    } else {
        dp[1] = arr[1]
        dp[2] = arr[1] + arr[2]
        dp[3] = max(arr[1]+arr[3], arr[2]+arr[3])
        
        for i in 4...n {
            dp[i] = max(arr[i]+arr[i-1]+dp[i-3], dp[i-2]+arr[i])
        }
        
        print(dp[n])
    }
}
