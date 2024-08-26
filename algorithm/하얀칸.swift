import Foundation

func whiteSpace() {
    var chessBoard: [[Character]] = []
    for _ in 0..<8 {
        if let line = readLine() {
            chessBoard.append(Array(line))
        }
    }
    
    var count = 0
    
    for i in 0..<8 {
        for j in 0..<8 {
            if (i + j) % 2 == 0 && chessBoard[i][j] == "F" {
                count += 1
            }
        }
    }
    
    print(count)
}
