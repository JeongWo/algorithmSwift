import Foundation

func sumSolution() {
    
    if let N = readLine().flatMap({ Int($0) }) {
        
        if let numbers = readLine() {
            
            let sum = numbers.compactMap { Int(String($0)) }.reduce(0, +)
            
            print(sum)
        }
    }
}
