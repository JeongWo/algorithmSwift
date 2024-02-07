import Foundation

func mathSolution5() {
    
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}


    if let input = readLine()?.split(separator: " ").compactMap({ Int($0) }) {
    let A = input[0]
    let B = input[1]
    
    let gcdV = gcd(A, B)
    let answer = String(repeating: "1", count: gcdV)
    
    print(answer)
    }
    
}
