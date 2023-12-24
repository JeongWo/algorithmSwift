import Foundation

func _solution(_ arr: [Int], _ k: Int) -> [Int] {
    var distinctSet = Set(arr)
    var answer: [Int] = []
    
    for num in arr {
        if distinctSet.contains(num) && answer.count < k {
            answer.append(num)
            distinctSet.remove(num)
        }
    }
    
    while answer.count < k {
        answer.append(-1)
    }
    
    return answer
}
