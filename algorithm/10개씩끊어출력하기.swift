import Foundation

func inputSolution13() {
    
if let word = readLine() {
    let length = word.count

    for i in stride(from: 0, to: length, by: 10) {
        let startIndex = word.index(word.startIndex, offsetBy: i)
        let endIndex = word.index(startIndex, offsetBy: min(10, length - i))
        let substring = word[startIndex..<endIndex]
        print(String(substring))
    }
}
}
