import Foundation


func learnEnglishWithDobby() {
    while let line = readLine(), line != "#" {
        let components = line.split(separator: " ", maxSplits: 1)
        if components.count < 2 {
            continue
        }
        
        let targetChar = components[0].lowercased()
        let sentence = components[1].lowercased()
        
        let count = sentence.filter { String($0) == targetChar }.count
        
        print("\(targetChar) \(count)")
    }
}
