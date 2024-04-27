import Foundation

func array4(_ arr:[Int]) -> [Int] {
    var answer: [Int] = []
    var i = 0
    
    while i < arr.count {
        if answer.isEmpty || answer.last! < arr[i] {
            answer.append(arr[i])
            i += 1
        } else {
            answer.removeLast()
        }
    }
    return answer
}
