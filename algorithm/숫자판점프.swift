import Foundation

func jumpingTheNumberBoard() {
    let n = 5
    
    var board = [[Int]]()
    for _ in 0..<n {
        board.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    
    var resultSet = Set<String>()
    let dx = [0, 0, 1, -1]
    let dy = [1, -1, 0, 0]
    
    func dfs(_ x: Int, _ y: Int, _ depth: Int, _ currentNum: String) {
        if depth == 6 {
            resultSet.insert(currentNum)
            return
        }
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < n {
                dfs(nx, ny, depth + 1, currentNum + "\(board[nx][ny])")
            }
        }
    }
    
    for i in 0..<n {
        for j in 0..<n {
            dfs(i, j, 1, "\(board[i][j])")
        }
    }
    
    print(resultSet.count)
}
