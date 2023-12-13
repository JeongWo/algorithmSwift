import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer = arr
    for query in queries {
        let start = query[0]
        let end = query[1]
        let k = query[2]
        
        for i in start...end {
            if i % k == 0 {
                answer[i] += 1
            }
        }
        
    }
    return answer
}
