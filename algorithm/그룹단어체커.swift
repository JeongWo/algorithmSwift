import Foundation

func GroupWordChecker() {
    func isGroupWord(_ word: String) -> Bool {
        var seenCharacters: Set<Character> = []
        var previousCharacter: Character? = nil
        
        for char in word {
            if let previous = previousCharacter, previous != char, seenCharacters.contains(char) {
                return false
            }
            seenCharacters.insert(char)
            previousCharacter = char
        }
        return true
    }
    
    if let n = Int(readLine()!), n > 0 {
        var groupWordCount = 0
        
        for _ in 0..<n {
            if let word = readLine(), isGroupWord(word) {
                groupWordCount += 1
            }
        }
        
        print(groupWordCount)
    }
}
