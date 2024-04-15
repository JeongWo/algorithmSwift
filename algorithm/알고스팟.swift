import Foundation

func algoSpot() {
    
    let mn = readLine()!.split(separator: " ").map { Int(String($0))! }
    let m = mn[0]
    let n = mn[1]
    
    var arr = [[Int]]()
    for _ in 0..<n {
        arr.append(readLine()!.map { Int(String($0))! })
    }
    
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    var dist = Array(repeating: Array(repeating: Int.max, count: m), count: n)
    
    var queue = [(Int, Int)]()
    queue.append((0, 0))
    dist[0][0] = 0
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m {
                if arr[nx][ny] == 0 && dist[nx][ny] > dist[x][y] {
                    dist[nx][ny] = dist[x][y]
                    queue.append((nx, ny))
                } else if arr[nx][ny] == 1 && dist[nx][ny] > dist[x][y] + 1 {
                    dist[nx][ny] = dist[x][y] + 1
                    queue.append((nx, ny))
                }
            }
        }
    }
    
    print(dist[n - 1][m - 1])
}
