import Foundation

func ATM() {
    
    func minWithdrawalTime(_ times: [Int]) -> Int {
        let sortedTimes = times.sorted()
        var total = 0
        var accumulatedTime = 0
        
        for time in sortedTimes {
            accumulatedTime += time
            total += accumulatedTime
        }
        
        return total
    }
    
    let N = Int(readLine()!)!
    let times = readLine()!.split(separator: " ").map { Int($0)! }
    
    print(minWithdrawalTime(times))
    
}
