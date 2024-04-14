import Foundation

func paperCount() {
    
    var count = [0, 0, 0]
    func cutPaper(_ paper: [[Int]], _ size: Int, _ row: Int, _ col: Int) {
        var same = true
        let first = paper[row][col]
        for i in row..<row+size {
            for j in col..<col+size {
                if paper[i][j] != first {
                    same = false
                    break
                }
            }
            if !same {
                break
            }
        }
        
        if same {
            count[first+1] += 1
        } else {
            let newSize = size / 3
            for i in 0..<3 {
                for j in 0..<3 {
                    cutPaper(paper, newSize, row + i * newSize, col + j * newSize)
                }
            }
        }
    }
    
    let N = Int(readLine()!)!
    var paper = [[Int]]()
    for _ in 0..<N {
        paper.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    cutPaper(paper, N, 0, 0)
    
    for c in count {
        print(c)
    }
}
