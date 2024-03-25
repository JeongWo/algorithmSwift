import Foundation


func dpSolution14() {
    
let T = Int(readLine()!)!

var padovan = [1,1,1,2,2]

for i in 5..<100 {
    padovan.append(padovan[i-1] + padovan[i-5])
}

for _ in 0..<T {
    let N = Int(readLine()!)!
    print(padovan[N-1])
}
}
