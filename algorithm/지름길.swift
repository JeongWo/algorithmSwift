import Foundation


func shortcut() {
    
    
    if let firstLine = readLine() {
        let parts = firstLine.split(separator: " ").map { Int($0)! }
        let N = parts[0]
        let D = parts[1]
        
        var shortcuts = [(Int, Int, Int)]()
        for _ in 0..<N {
            if let line = readLine() {
                let shortcutParts = line.split(separator: " ").map { Int($0)! }
                let start = shortcutParts[0]
                let end = shortcutParts[1]
                let length = shortcutParts[2]
                shortcuts.append((start, end, length))
            }
        }
        
        let result = dijkstra(N: N, D: D, shortcuts: shortcuts)
        print(result)
    }
    
    func dijkstra(N: Int, D: Int, shortcuts: [(Int, Int, Int)]) -> Int {
        var distance = [Int](repeating: Int.max, count: D + 1)
        distance[0] = 0
        
        var pq = [(0, 0)]
        
        while !pq.isEmpty {
            pq.sort(by: { $0.0 > $1.0 })
            let (currentDist, currentPos) = pq.removeLast()
            
            if currentDist > distance[currentPos] {
                continue
            }
            
            if currentPos + 1 <= D && currentDist + 1 < distance[currentPos + 1] {
                distance[currentPos + 1] = currentDist + 1
                pq.append((currentDist + 1, currentPos + 1))
            }
            
            for (start, end, shortcutDist) in shortcuts {
                if start == currentPos && end <= D {
                    if currentDist + shortcutDist < distance[end] {
                        distance[end] = currentDist + shortcutDist
                        pq.append((currentDist + shortcutDist, end))
                    }
                }
            }
        }
        
        return distance[D]
    }
}
