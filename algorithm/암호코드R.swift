import Foundation

func cryptoCode() {
    let mod = 1000000
    let code = readLine()!.map { Int(String($0))! }
    let n = code.count
    var dp = Array(repeating: [0, 0], count: n)
    
    if code.first! == 0 {
        print(0)
    } else {
        dp[0] = [1, 0]
        
        for i in 1..<n {
            let left = code[i - 1]
            let cur = code[i]
            
            if cur != 0 {
                dp[i][0] = (dp[i - 1][0] + dp[i - 1][1]) % mod
            }
            
            if left > 0 && left * 10 + cur < 27 {
                dp[i][1] = dp[i - 1][0] % mod
            }
        }
        
        print((dp[n - 1][0] + dp[n - 1][1]) % mod)
    }
}
