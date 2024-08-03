import Foundation

func sortInside() {
    
    if let input = readLine() {
        let sortedDigits = input.sorted(by: >)
        
        let sortedNumber = String(sortedDigits)
        
        print(sortedNumber)
    }
}
