import Foundation
func mathSolution() {
    
if let input = readLine() {
        let numbers = input.split(separator: " ").compactMap { Int($0) }
        
    if numbers.count == 3 {
            let A = numbers[0]
            let B = numbers[1]
            let C = numbers[2]
            
            let result1 = (A + B) % C
            let result2 = ((A % C) + (B % C)) % C
            let result3 = (A * B) % C
            let result4 = ((A % C) * (B % C)) % C
            
            print(result1)
            print(result2)
            print(result3)
            print(result4)
        }
    }
}
