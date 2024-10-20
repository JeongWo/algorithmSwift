import Foundation

func wordAlignment() {
    
    if let n = Int(readLine()!) {
        var words = Set<String>()
        
        for _ in 0..<n {
            let word = readLine()!
            words.insert(word)
        }
        
        let sortedWords = words.sorted {
            if $0.count == $1.count {
                return $0 < $1
            } else {
                return $0.count < $1.count
            }
        }
        
        for word in sortedWords {
            print(word)
        }
    }
}
