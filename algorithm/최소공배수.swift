import Foundation

func mathSolution4() {
    
func gcd(_ a: Int , _ b: Int)-> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

if let input = readLine() {
    let T = Int(input)!
    
    for _ in 0..<T {
        if let numbers = readLine()?.split(separator: " ").compactMap({Int($0)}) {
            guard numbers.count == 2
            else {
                fatalError("required number")
            }
            
            let A = numbers[0]
            let B = numbers[1]
            let GCD = gcd(A, B)
            let LCM = A * B / GCD
            print(LCM)
            }
        }
    }
}
