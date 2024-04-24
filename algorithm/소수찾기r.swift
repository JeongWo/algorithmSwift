import Foundation


func findPrime() {
    
    let n = Int(readLine()!)!
    let numbers = readLine()!.split(separator: " ").map{Int($0)!}
    var primeCount = 0
    
    for number in numbers {
        if isPrime(number) {
            primeCount += 1
        }
        print(primeCount)
    }
    
    
    func isPrime(_ number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number == 2 || number == 3 {
            return true
        }
        for i in 2...Int(sqrt(Double(number))) {
            if number % i == 0 {
                return false
            }
        }
        return true
    }
}
