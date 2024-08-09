import Foundation

func SumOfNonAppearingCharacters() {
    
    let totalAsciiSum = (65...90).reduce(0, +)
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let S = readLine()!
        let usedAsciiSum = Set(S).reduce(0) { sum, character in
            sum + Int(character.asciiValue!)
        }
        let missingAsciiSum = totalAsciiSum - usedAsciiSum
        
        print(missingAsciiSum)
    }
}
