import Foundation

func threeParts() {
    let word = readLine()!
    
    var minWord = word
    let n = word.count
    
    for i in 1..<n-1 {
        for j in i+1..<n {
            let part1 = String(word[..<word.index(word.startIndex, offsetBy: i)].reversed())
            let part2 = String(word[word.index(word.startIndex, offsetBy: i)..<word.index(word.startIndex, offsetBy: j)].reversed())
            let part3 = String(word[word.index(word.startIndex, offsetBy: j)...].reversed())
            
            let newWord = part1 + part2 + part3
            
            if newWord < minWord {
                minWord = newWord
            }
        }
    }
    
    print(minWord)
}
