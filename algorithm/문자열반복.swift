import Foundation


func repeatingAString() {
    let testCaseCount = Int(readLine()!)!
    
    for _ in 0..<testCaseCount {
        let input = readLine()!.split(separator: " ")
        let repeatCount = Int(input[0])!
        let originalString = String(input[1])
        
        var resultString = ""
        
        for char in originalString {
            resultString += String(repeating: char, count: repeatCount)
        }
        
        print(resultString)
    }
}
