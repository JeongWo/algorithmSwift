import Foundation

func excellentVillage() {
    
    let N = Int(readLine()!)!
    let population = readLine()!.split(separator: " ").map { Int($0)! }
    var adj = [[Int]](repeating: [], count: N + 1)
    
    for _ in 0..<N-1 {
        let edge = readLine()!.split(separator: " ").map { Int($0)! }
        adj[edge[0]].append(edge[1])
        adj[edge[1]].append(edge[0])
    }
    
    var dp = [[Int]](repeating: [0, 0], count: N + 1)
    var visited = [Bool](repeating: false, count: N + 1)
    
    func dfs(_ u: Int) {
        visited[u] = true
        dp[u][0] = 0
        dp[u][1] = population[u - 1]
        
        for v in adj[u] {
            if !visited[v] {
                dfs(v)
                dp[u][0] += max(dp[v][0], dp[v][1])
                dp[u][1] += dp[v][0]
            }
        }
    }
    
    dfs(1)
    
    let result = max(dp[1][0], dp[1][1])
    print(result)
}
