import Foundation

func primeSum() {
    
    func makePrimeNumber(_ n: Int) -> [Int] {
        if n < 2 {
            return []
        }
        
        var isPrimeNumber = [Bool](repeating: true, count: n + 1)
        for i in 2...Int(sqrt(Double(n))) + 1 {
            if isPrimeNumber[i] {
                var j = 2
                while i * j <= n {
                    isPrimeNumber[i * j] = false
                    j += 1
                }
            }
        }
        return isPrimeNumber.enumerated().filter { $0.element && $0.offset > 1 }.map { $0.offset }
    }
    
    func countConsecutivePrimeSum(_ n: Int) -> Int {
        let primeNumbers = makePrimeNumber(n)
        var answer = 0
        var end = 0
        var sum = 0
        
        for start in 0..<primeNumbers.count {
            while end < primeNumbers.count && sum < n {
                sum += primeNumbers[end]
                end += 1
            }
            if sum == n {
                answer += 1
            }
            sum -= primeNumbers[start]
        }
        
        return answer
    }
    
    if let input = readLine(), let n = Int(input) {
        let result = countConsecutivePrimeSum(n)
        print(result)
    }
    
}
