import Foundation

func NationalQualifyingRounds(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var attendArray = Array<Int>(repeating: rank.count + 1, count: rank.count)
    
    for i in 0 ..< rank.count {
        if attendance[i] == true {
            attendArray[i] = rank[i]
        }
    }
    
    let numArray = [10000, 100, 1]
    var answer = 0
    
    for i in 0 ..< 3 {
        if let minElement = attendArray.enumerated().min(by: { $0.element < $1.element }) {
            answer += numArray[i] * minElement.offset
            attendArray[minElement.offset] = rank.count + 1
        }
    }
    
    return answer
}
