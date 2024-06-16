import Foundation

func mSquare(_ arr: [[Int]]) -> [[Int]] {
    let rows = arr.count
    let cols = arr[0].count
    var answer = arr
    
    if rows > cols {
        for i in 0..<rows {
            for _ in 0..<(rows - cols) {
                answer[i].append(0)
            }
        }
    } else if cols > rows {
        for i in 0..<(cols - rows) {
            answer.append(Array(repeating: 0, count: cols))
        }
    }
    
    return answer
}
