import Foundation

func dpSolution11() {
    
    if let N = Int(readLine()!), let input = readLine() {
        let numbers = input.split(separator: " ").compactMap{ Int($0) }
        
        var maxSum = Int.min
        var currentSum = 0
        
        for num in numbers {
            currentSum = max(num, currentSum + num)
            maxSum = max(maxSum, currentSum)
        }
        print(maxSum)
    }
    
}
