import Foundation

func addDigit(_ n: Int) -> Int {
    var answer: Int = 0
    let arr = String(n).map { Int(String($0))! }
    
    for i in 0..<arr.count {
        answer += arr[i]
    }
    return answer
}
