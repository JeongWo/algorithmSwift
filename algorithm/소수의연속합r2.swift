import Foundation

func primSum2() {
    
    func makePrimeNumber(_ N: Int) -> [Int] {
        if N < 2 {
            return []
        }
        var isPrimeNumber = [Bool](repeating: true, count: N+1)
        for i in 2...Int(sqrt(Double(N))) + 1 {
            if isPrimeNumber[i] {
                var j = 2
                while i * j <= N {
                    isPrimeNumber[i*j] = false
                    j += 1
                }
            }
        }
        return isPrimeNumber.enumerated().filter{ $0.element && $0.offset > 1 }.map{$0.offset}
    }
    
    func countConsecutivePrimeSum(_ N: Int) -> Int {
        let primeNumbers = makePrimeNumber(N)
        var answer = 0
        var end = 0
        var sum = 0
        
        for start in 0..<primeNumbers.count {
            while end < primeNumbers.count && sum < N {
                sum += primeNumbers[end]
                end += 1
            }
            if sum == N {
                answer += 1
            }
            sum -= primeNumbers[start]
        }
        return answer
    }
    
    
    if let N =  Int(readLine()!) {
        print(countConsecutivePrimeSum(N))
        
    }
}
