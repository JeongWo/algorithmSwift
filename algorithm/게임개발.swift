import Foundation

func minimumBuildTime() {
    
    let n = Int(readLine()!)!
    var buildTime = [Int](repeating: 0, count: n + 1)
    var indegree = [Int](repeating: 0, count: n + 1)
    var graph = [[Int]](repeating: [], count: n + 1)
    
    for i in 1...n {
        let inputs = readLine()!.split(separator: " ").map { Int($0)! }
        buildTime[i] = inputs[0]
        
        for j in 1..<inputs.count - 1 {
            let prerequisite = inputs[j]
            graph[prerequisite].append(i)
            indegree[i] += 1
        }
    }
    
    var queue = [Int]()
    var result = buildTime
    
    for i in 1...n {
        if indegree[i] == 0 {
            queue.append(i)
        }
    }
    
    var index = 0
    
    while index < queue.count {
        let current = queue[index]
        index += 1
        
        for next in graph[current] {
            indegree[next] -= 1
            result[next] = max(result[next], result[current] + buildTime[next])
            if indegree[next] == 0 {
                queue.append(next)
            }
        }
    }
    
    for i in 1...n {
        print(result[i])
    }
}
