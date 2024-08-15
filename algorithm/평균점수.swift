import Foundation

func averageScore() {
    var scores = [Int]()
    
    for _ in 0..<5 {
        if let line = readLine(), let score = Int(line) {
            scores.append(score)
        }
    }
    
    let adjustedScores = scores.map { max($0, 40) }
    
    let averageScore = adjustedScores.reduce(0, +) / adjustedScores.count
    
    print(averageScore)
}
