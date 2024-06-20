import Foundation

func alphabet() {
    let RC = readLine()!.split(separator: " ").map { Int($0)! }
    let R = RC[0]
    let C = RC[1]
    
    var map = [[Int]]()
    let directions: [(Int, Int)] = [(0, -1), (0, 1), (-1, 0), (1, 0)]
    var maxCount = 0
    
    for _ in 0..<R {
        let row = readLine()!.map { Int($0.asciiValue! - 65) }
        map.append(row)
    }
    
    func dfs(y: Int, x: Int, count: Int, visited: Int) {
        maxCount = max(maxCount, count)
        
        for (dy, dx) in directions {
            let ny = y + dy
            let nx = x + dx
            
            if ny >= 0 && ny < R && nx >= 0 && nx < C {
                let newVisited = visited | (1 << map[ny][nx])
                if newVisited != visited {
                    dfs(y: ny, x: nx, count: count + 1, visited: newVisited)
                }
            }
        }
    }
    
    let startBit = 1 << map[0][0]
    dfs(y: 0, x: 0, count: 1, visited: startBit)
    print(maxCount)
}
