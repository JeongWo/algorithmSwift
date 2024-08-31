import Foundation

func lcs3() {
    let str1 = Array(readLine()!)
    let str2 = Array(readLine()!)
    let str3 = Array(readLine()!)
    
    let len1 = str1.count
    let len2 = str2.count
    let len3 = str3.count
    
    var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: len3 + 1), count: len2 + 1), count: len1 + 1)
    
    for i in 1...len1 {
        for j in 1...len2 {
            for k in 1...len3 {
                if str1[i - 1] == str2[j - 1] && str2[j - 1] == str3[k - 1] {
                    dp[i][j][k] = dp[i - 1][j - 1][k - 1] + 1
                } else {
                    dp[i][j][k] = max(dp[i - 1][j][k], dp[i][j - 1][k], dp[i][j][k - 1])
                }
            }
        }
    }
    
    print(dp[len1][len2][len3])
}
