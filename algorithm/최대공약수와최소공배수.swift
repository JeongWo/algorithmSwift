import Foundation

// GCD(Greatest Common Divisor), LCM(Least Common Multiple)

func mathSolution3() {
    
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}



if let input = readLine() {
    let numbers = input.split(separator: " ").compactMap {Int($0)}
    
    guard numbers.count == 2 else {
        fatalError("required number")
    }
    
    let ip1 = numbers[0]
    let ip2 = numbers[1]
    let GCD = gcd(ip1, ip2)
    let LCM = ip1 * ip2 / GCD

    print(GCD)
    print(LCM)

    }
}
