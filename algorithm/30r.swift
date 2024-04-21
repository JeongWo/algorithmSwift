import Foundation

func thirtySolution() {
    
    if let N = readLine() {
        let digits = Array(N).compactMap{Int(String($0))}
        var sum = 0
        for digit in digits {
            sum += digit
        }
        
        guard sum % 3 == 0 else {
            print("-1")
            exit(0)
        }
        
        let sortedDigits = digits.sorted(by: >)
        
        guard sortedDigits.contains(0) else {
            print("-1")
            exit(0)
        }
        let result = sortedDigits.map{String($0)}.joined()
        print(result)
    }
}
