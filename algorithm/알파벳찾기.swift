import Foundation


func solutionStr2() {
    
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var answer = Array(repeating: "-1", count: 26)
let input = readLine()!

for (index, char) in input.enumerated() {
    let alphabetIndex = alphabet.firstIndex(of: char)!
    if answer[alphabetIndex] == "-1" {
        answer[alphabetIndex] = String(index)
    }
}
print(answer.joined(separator: " "))
}
