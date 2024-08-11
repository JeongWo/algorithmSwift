import Foundation

func rotation() {
    
    let input = readLine()!
    let length = input.count
    
    var currentNumber = input
    var sum = 0
    
    for _ in 0..<length {
        sum += Int(currentNumber)!
        
        let lastDigit = currentNumber.removeLast()
        currentNumber = "\(lastDigit)\(currentNumber)"
    }
    
    print(sum)
}
