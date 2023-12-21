import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var stack: [Int] = []

    var i = 0
    while i < arr.count {
        if stack.isEmpty {
            stack.append(arr[i])
            i += 1
        } else if stack.last == arr[i] {
            stack.removeLast()
            i += 1
        } else {
            stack.append(arr[i])
            i += 1
        }
    }

    return stack.isEmpty ? [-1] : stack
}
