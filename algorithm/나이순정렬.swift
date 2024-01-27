import Foundation

func sortSolution5() {
    

let N = Int(readLine()!)!
var User: [(age: Int, id: String)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    let age = Int(input[0])!
    let id = String(input[1])
    User.append((age, id))
}

User.sort { $0.age < $1.age }
User.forEach { print($0.age, $0.id) }
}
