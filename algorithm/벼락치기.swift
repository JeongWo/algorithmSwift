import Foundation

func cramming() {
    
    let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
    let N = firstLine[0]
    let T = firstLine[1]
    var lessons = [(time: Int, score: Int)]()
    
    for _ in 0..<N {
        let line = readLine()!.split(separator: " ").map { Int($0)! }
        let time = line[0]
        let score = line[1]
        lessons.append((time, score))
    }
    var dp = [Int](repeating: 0, count: T + 1)
    
    for lesson in lessons {
        let time = lesson.time
        let score = lesson.score
        
        if time <= T {
            for t in stride(from: T, through: time, by: -1) {
                dp[t] = max(dp[t], dp[t - time] + score)
            }
        }
    }
    
    print(dp[T])
    
}
