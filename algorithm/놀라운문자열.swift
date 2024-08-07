import Foundation


func SurprisingStrings() {
    func isSurprising(_ str: String) -> Bool {
        let length = str.count
        let characters = Array(str)
        
        for d in 0..<length-1 {
            var seenPairs = Set<String>()
            
            for i in 0..<length-d-1 {
                let pair = String(characters[i]) + String(characters[i + d + 1])
                
                if seenPairs.contains(pair) {
                    return false
                }
                seenPairs.insert(pair)
            }
        }
        
        return true
    }
    
    while let input = readLine(), input != "*" {
        if isSurprising(input) {
            print("\(input) is surprising.")
        } else {
            print("\(input) is NOT surprising.")
        }
    }
}
