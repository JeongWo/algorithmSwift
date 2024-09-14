import Foundation


func oxQuizz() {
    let testCases = Int(readLine()!)!
    
    for _ in 0..<testCases {
        let result = readLine()!
        
        var score = 0
        var currentStreak = 0
        
        for char in result {
            if char == "O" {
                currentStreak += 1
                score += currentStreak
            } else {
                currentStreak = 0
            }
        }
        
        print(score)
    }
}
