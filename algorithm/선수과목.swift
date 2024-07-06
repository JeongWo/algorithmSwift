import Foundation

func prerequisite() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let N = input[0]
    let M = input[1]
    var graph = [[Int]](repeating: [], count: N + 1)
    var inDegree = [Int](repeating: 0, count: N + 1)
    var semester = [Int](repeating: 0, count: N + 1)
    
    for _ in 0..<M {
        let condition = readLine()!.split(separator: " ").map { Int($0)! }
        let A = condition[0]
        let B = condition[1]
        graph[A].append(B)
        inDegree[B] += 1
    }
    
    var queue = [Int]()
    
    for i in 1...N {
        if inDegree[i] == 0 {
            queue.append(i)
            semester[i] = 1
        }
    }
    
    var index = 0
    while index < queue.count {
        let current = queue[index]
        index += 1
        for next in graph[current] {
            inDegree[next] -= 1
            if inDegree[next] == 0 {
                queue.append(next)
                semester[next] = semester[current] + 1
            }
        }
    }
    
    for i in 1...N {
        print(semester[i], terminator: " ")
    }
    
    
}
