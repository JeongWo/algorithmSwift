import Foundation

func lastElement(_ numList:[Int]) -> [Int] {
    var answer = numList
    
    if numList.last ?? 0 > (numList.dropLast().last ?? 0) {
        answer.append(numList.last! - (numList.dropLast().last ?? 0))
    }else {
        answer.append(numList.last!*2)
    }
    return answer
}
