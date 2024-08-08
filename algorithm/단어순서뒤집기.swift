import Foundation


func reverseWordOrder() {
    
    let n = Int(readLine()!)!
    
    for i in 1...n {
        let line = readLine()!
        let words = line.split(separator: " ")
        let reversedWords = words.reversed().joined(separator: " ")
        
        print("Case #\(i): \(reversedWords)")
    }
}
