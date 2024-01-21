import Foundation

func dfnSolution() {
    
let N = Int(readLine()!)!
var W = Array(repeating: Array(repeating: 0, count: N), count: N)

for i in 0..<N {
    let a = readLine()!.split(separator: " ").map { Int(String($0))! }
    W[i] = a
}

var answer = 10000000
var result = [Int]()
var visited = Array(repeating: false, count: N)

func vs(_ present: Int, _ destination: Int, _ cost: Int) {
    if result.count == N && present == destination {
        answer = min(answer, cost)
        return
    }

    for i in 0..<N {
        if !visited[i] && W[present][i] > 0 {
            visited[i] = true
            result.append(W[present][i])
            vs(i, destination, cost + W[present][i])
            result.removeLast()
            visited[i] = false
        }
    }
}

vs(0, 0, 0)
print(answer)
}
