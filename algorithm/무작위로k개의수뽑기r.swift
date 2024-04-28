import Foundation

func randomK(_ arr: [Int], _ k: Int) -> [Int] {
    var answer: [Int] = []
    var distinct = Set(arr)
    
    for num in arr {
        if distinct.contains(num) && answer.count < k {
            answer.append(num)
            distinct.remove(num)
        }
    }
    
    while answer.count < k {
        answer.append(-1)
    }
    
    return answer
}
