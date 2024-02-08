import Foundation

func mathSolution6() {
    
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

if let t = Int(readLine()!) {
    
    for _ in 0..<t {
    
        if let testCase = readLine()?.split(separator: " ").compactMap{(Int($0))} {
                let n = testCase[0]
            let numbers = Array(testCase[1...])
            
            var sumGCD = 0
            for i in 0..<n {
                for j in i+1..<n {
                    sumGCD += gcd(numbers[i], numbers[j])
                    }
                }
            print(sumGCD)
            }
        }
    }
}
