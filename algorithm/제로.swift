import Foundation

func zero() {
    let K = Int(readLine()!)!
    var stack = [Int]()
    
    for _ in 0..<K {
        let num = Int(readLine()!)!
        
        if num == 0 {
            stack.removeLast()
        } else {
            stack.append(num)
        }
    }
    
    let sum = stack.reduce(0, +)
    print(sum)
}
