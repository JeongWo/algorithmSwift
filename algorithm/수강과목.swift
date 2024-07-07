import Foundation

func courses() {
    
    if let firstLine = readLine() {
        let firstLineParts = firstLine.split(separator: " ").map { Int($0)! }
        let N = firstLineParts[0]
        let K = firstLineParts[1]
        
        var subjects = [(importance: Int, time: Int)]()
        
        for _ in 0..<K {
            if let line = readLine() {
                let parts = line.split(separator: " ").map { Int($0)! }
                let importance = parts[0]
                let time = parts[1]
                subjects.append((importance, time))
            }
        }
        
        var dp = [Int](repeating: 0, count: N + 1)
        
        for subject in subjects {
            let importance = subject.importance
            let time = subject.time
            
            if time > N {
                continue
            }
            
            for currentTime in stride(from: N, through: time, by: -1) {
                dp[currentTime] = max(dp[currentTime], dp[currentTime - time] + importance)
            }
        }
        
        print(dp[N])
    }
}
