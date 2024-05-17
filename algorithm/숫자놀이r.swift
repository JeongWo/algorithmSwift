import Foundation

func playingNumber() {
    
    let n = Int(readLine()!)!
    let l = readLine()!.split(separator: " ").map { Int($0)! }
    let nums = Set(l)
    let k = Int(readLine()!)!
    var dp = [Float](repeating: Float.infinity, count: l[l.count - 1] * k + 2)
    
    for i in 1...(l[l.count - 1] * k + 1) {
        if nums.contains(i) {
            dp[i] = 1
        } else {
            for j in 1...(i / 2) {
                dp[i] = min(dp[i], dp[j] + dp[i - j])
            }
        }
        
        if dp[i] > Float(k) {
            let winner = i % 2 == 0 ? "holsoon" : "jjaksoon"
            print("\(winner) win at \(i)")
            break
            
        }
    }
}
