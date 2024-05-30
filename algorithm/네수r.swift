import Foundation

func number4() {
    
    if let input = readLine() {
        let numbers = input.split(separator: " ").compactMap { Int($0) }
        
        guard numbers.count == 4 else {
            fatalError("required number")
        }
        
        let firstNum = Int("\(numbers[0])\(numbers[1])") ?? 0
        let secondNum = Int("\(numbers[2])\(numbers[3])") ?? 0
        
        let answer = firstNum + secondNum
        
        print(answer)
    }
}
