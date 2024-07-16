import Foundation

func CreatingAnagrams() {
    
    func calculateFrequency(_ word: String) -> [Character: Int] {
        var frequency = [Character: Int]()
        for char in word {
            frequency[char, default: 0] += 1
        }
        return frequency
    }
    
    let word1 = readLine()!
    let word2 = readLine()!
    
    let freq1 = calculateFrequency(word1)
    let freq2 = calculateFrequency(word2)
    
    var removeCount = 0
    
    for (char, count1) in freq1 {
        let count2 = freq2[char, default: 0]
        removeCount += abs(count1 - count2)
    }
    
    for (char, count2) in freq2 {
        if freq1[char] == nil {
            removeCount += count2
        }
    }
    
    print(removeCount)
}
