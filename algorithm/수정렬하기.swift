import Foundation

func sortSolution() {
    
let N = Int(readLine()!)!
var Arr: [Int] = []

for _ in 0..<N {
      Arr.append(Int(readLine()!)!)
}

var answer = Arr.sorted()

for i in 0..<N {
    print(answer[i])
    }
}
