import Foundation


func inputSolution20() {
    
    if let N = Int(readLine()!) {
        for i in 0..<N {
            let stars = String(repeating: "*", count: 2 * (N - i) - 1)
            let spaces = String(repeating: " ", count:i)
            print(spaces + stars)
        }
        
        for i in (1..<N).reversed() {
            let stars = String(repeating: "*", count: 2 * (N - i) + 1)
            let spaces = String(repeating: " ", count: i - 1)
            print(spaces + stars)
        }
    }
    
}
