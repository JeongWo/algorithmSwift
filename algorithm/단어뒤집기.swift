import Foundation

func flipWords() {
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let sentence = readLine()!
        let words = sentence.split(separator: " ")
        
        let reversedWords = words.map { String($0.reversed()) }
        
        print(reversedWords.joined(separator: " "))
    }
}
