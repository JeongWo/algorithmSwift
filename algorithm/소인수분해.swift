import Foundation

func mathSolution14() {
    
    func primeFactors(of number: Int) {
        var num = number
        var divisor = 2
        while num > 1 {
            while num % divisor == 0 {
                print(divisor)
                num /= divisor
            }
            divisor += 1
        }
    }
    
    if let input = Int(readLine()!) {
        if input > 1 {
            primeFactors(of: input)
        }
    }
}
