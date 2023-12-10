
import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer:[[Int]] = []
    for i in 0..<n {
        var row: [Int] = []
        
        for j in 0..<n {
            if i == j {
                row.append(1)
            }else{
                row.append(0)
            }
        }
        answer.append(row)
    }
        return answer
}
