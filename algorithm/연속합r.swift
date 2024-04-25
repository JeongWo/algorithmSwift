import Foundation

func ContinuousSum() {
    
    if let N = readLine() {
        let numbers = N.split(separator: " ").compactMap{ Int($0) }
        var maxSum = Int.min
        var currentSum = 0
        
        for num in numbers {
            currentSum = max(num, currentSum + num)
            maxSum = max(maxSum, currentSum)
        }
        print(maxSum)
    }
    
}
