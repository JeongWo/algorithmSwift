
import Foundation

func solution(_ a:Int, _ d:Int, _ included:[Bool]) -> Int {
    var answer = 0
    var currentValue = a
    for (_, isInclude) in included.enumerated() {
        if isInclude {
            answer += currentValue
        }
        currentValue += d
    }
    return answer
}
