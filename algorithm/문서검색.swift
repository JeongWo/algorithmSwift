import Foundation

func searchDocuments() {
    
    func countNonOverlappingOccurrences(document: String, word: String) -> Int {
        let documentLength = document.count
        let wordLength = word.count
        
        var index = 0
        var count = 0
        
        while index <= documentLength - wordLength {
            let startIndex = document.index(document.startIndex, offsetBy: index)
            let endIndex = document.index(startIndex, offsetBy: wordLength)
            let substring = document[startIndex..<endIndex]
            
            if substring == word {
                count += 1
                index += wordLength
            } else {
                index += 1
            }
        }
        
        return count
    }
    
    if let document = readLine(), let word = readLine() {
        let result = countNonOverlappingOccurrences(document: document, word: word)
        print(result)
    }
}
