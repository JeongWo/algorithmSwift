import Foundation

func flippedAddition() {
    
    func reverseNumber(_ number: Int) -> Int {
        let reversedString = String(String(number).reversed())
        return Int(reversedString)!
    }
    
    if let input = readLine() {
        let numbers = input.split(separator: " ").map { Int($0)! }
        let x = numbers[0]
        let y = numbers[1]
        
        let revX = reverseNumber(x)
        let revY = reverseNumber(y)
        
        let sum = revX + revY
        let result = reverseNumber(sum)
        
        print(result)
    }
}
