import Foundation


func MemorizingWordsPain() {
    
    let firstLine = readLine()!.split(separator: " ")
    let N = Int(firstLine[0])!
    let M = Int(firstLine[1])!
    
    var wordCount = [String: Int]()
    
    for _ in 0..<N {
        let word = readLine()!
        if word.count >= M {
            wordCount[word, default: 0] += 1
        }
    }
    
    let sortedWords = wordCount.keys.sorted {
        let count1 = wordCount[$0]!
        let count2 = wordCount[$1]!
        
        if count1 != count2 {
            return count1 > count2
        } else if $0.count != $1.count {
            return $0.count > $1.count
        } else {
            return $0 < $1
        }
    }
    
    for word in sortedWords {
        print(word)
    }
}
