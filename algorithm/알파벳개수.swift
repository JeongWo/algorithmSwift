import Foundation


func solutionStr() {
    
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var answer = Array(repeating: "0", count: 26)
let input = readLine()!
var S = [String]()

for i in input {
    if !S.contains(String(i)) {
        var temp = 0
        for j in input {
            if i == j {temp += 1}
        }
        answer[alphabet.firstIndex(of: i)!] = String(temp)
    }
    S.append(String(i))
}
print(answer.joined(separator: " "))
}
