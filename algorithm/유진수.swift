import Foundation


func eugeneNumber() {
    
    func productOfDigits(_ digits: [Character]) -> Int {
        return digits.map { Int(String($0))! }.reduce(1, *)
    }
    
    func isEugeneNumber(_ number: String) -> Bool {
        let n = number.count
        let numberArray = Array(number)
        
        for i in 1..<n {
            let leftPart = Array(numberArray[0..<i])
            let rightPart = Array(numberArray[i..<n])
            
            let leftProduct = productOfDigits(leftPart)
            let rightProduct = productOfDigits(rightPart)
            
            if leftProduct == rightProduct {
                return true
            }
        }
        return false
    }
    
    if let input = readLine() {
        if isEugeneNumber(input) {
            print("YES")
        } else {
            print("NO")
        }
    }
}
