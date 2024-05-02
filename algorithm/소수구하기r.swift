import Foundation

func primeR() {
    
    func isPrime(_ num: Int) -> Bool {
        if num <= 1{
            return false
        }
        if num == 2 || num == 3 {
            return true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if num%i == 0 {
                return false
            }
        }
        return true
    }
    guard let inputString = readLine() else {
        fatalError("error")
    }
    let input = inputString.split(separator: " ").compactMap{Int($0)}
    guard input.count == 2 else {
        fatalError("error")
    }
    let M = input[0]
    let N = input[1]
    
    for number in M...N {
        if isPrime(number) {
            print(number)
        }
    }
    
}
