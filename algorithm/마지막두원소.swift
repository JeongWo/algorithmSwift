import Foundation
func solution(_ num_list:[Int]) -> [Int] {
    var answer = num_list
    if num_list.last ?? 0 > (num_list.dropLast().last ?? 0) {
        answer.append(num_list.last! - (num_list.dropLast().last ?? 0))
    }else {
        answer.append(num_list.last!*2)
    }
    return answer
}
