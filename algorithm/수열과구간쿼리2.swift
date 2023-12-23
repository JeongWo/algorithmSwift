import Foundation

func _solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var answer: [Int] = []
    
    for query in queries {
        let start = query[0]
        let end = query[1]
        let k = query[2]
        
        var minValue = Int.max
        
        if end >= arr.count {
            return []
        }
        
        for i in start...end {
            if i < arr.count && arr[i] > k && arr[i] < minValue {
                minValue = arr[i]
            }
        }
        
        if minValue == Int.max {
            answer.append(-1)
        } else {
            answer.append(minValue)
        }
    }
    
    return answer
}
