import Foundation


func pronounceYourPassword() {
    
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    
    func isValidPassword(_ password: String) -> Bool {
        var hasVowel = false
        var vowelCount = 0
        var consonantCount = 0
        var prevChar: Character? = nil
        
        for char in password {
            if vowels.contains(char) {
                hasVowel = true
                vowelCount += 1
                consonantCount = 0
            } else {
                consonantCount += 1
                vowelCount = 0
            }
            
            if vowelCount == 3 || consonantCount == 3 {
                return false
            }
            
            if let prev = prevChar, prev == char && !(prev == "e" || prev == "o") {
                return false
            }
            
            prevChar = char
        }
        
        return hasVowel
    }
    
    while let input = readLine(), input != "end" {
        if isValidPassword(input) {
            print("<\(input)> is acceptable.")
        } else {
            print("<\(input)> is not acceptable.")
        }
    }
}
