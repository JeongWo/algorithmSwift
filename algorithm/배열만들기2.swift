import Foundation

func solution2(_ r:Int, _ l:Int)-> [Int] {
    var answer:[Int] = []
    
    for i in l...r {
        let str = String(i)
        if str.allSatisfy({$0 == "0" || $0 == "5" }) {
            answer.append(i)
        }
    }
    return answer.isEmpty ? [-1] : answer.sorted()
}
