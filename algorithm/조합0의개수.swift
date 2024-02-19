import Foundation

func mathSolution17() {
    
    func countFactor(_ n: Int, _ k: Int) -> Int {
        var count = 0
        var num = k
        
        while n / num > 0 {
            count += n / num
            num *= k
        }
        return count
    }
    
    if let input = readLine(), let spaceIndex = input.firstIndex(of: " ") {
        let n = Int(input[..<spaceIndex]) ?? 0
        let m = Int(input[input.index(after: spaceIndex)...]) ?? 0
        
        let numTwo = countFactor(n, 2) - countFactor(m, 2) - countFactor(n - m, 2)
        let numFive = countFactor(n, 5) - countFactor(m, 5) - countFactor(n-m, 5)
        
        print(min(numTwo, numFive))
    }
}
