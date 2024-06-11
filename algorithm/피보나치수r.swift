import Foundation

func fibonacci(_ n: Int) -> Int {
    var answer = [Int](repeating: 0, count: n+1)
    
    answer[0] = 0
    answer[1] = 1
    
    for i in 2...n {
        answer[i] = (answer[i-1] + answer[i-2] % 1234567)
    }
    return answer[n]
}
