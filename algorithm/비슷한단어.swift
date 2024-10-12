import Foundation

func similarWords() {
    
    func getPattern(_ word: String) -> String {
        var mapping: [Character: Int] = [:]
        var nextNum = 0
        var pattern = ""
        
        for char in word {
            if let num = mapping[char] {
                pattern += "\(num)"
            } else {
                mapping[char] = nextNum
                pattern += "\(nextNum)"
                nextNum += 1
            }
        }
        return pattern
    }
    
    func countSimilarPairs(words: [String]) -> Int {
        var patternMap: [String: Int] = [:]
        var count = 0
        
        for word in words {
            let pattern = getPattern(word)
            if let existingCount = patternMap[pattern] {
                count += existingCount
                patternMap[pattern] = existingCount + 1
            } else {
                patternMap[pattern] = 1
            }
        }
        
        return count
    }
    
    let N = Int(readLine()!)!
    var words: [String] = []
    
    for _ in 0..<N {
        let word = readLine()!
        words.append(word)
    }
    
    print(countSimilarPairs(words: words))
}
