import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    
    let arr = String(n).map { Int(String($0))! }
    
    for i in 0...arr.count-1 {
        answer += arr[i]
    }
    return answer
}
