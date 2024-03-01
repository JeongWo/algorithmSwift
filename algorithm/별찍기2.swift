import Foundation
func inpurSolution14() {
    
    if let N = Int(readLine()!) {
        for i in 1...N {
            print(String(repeating: " ", count: N - i) + String(repeating: "*", count: i))
        }
    }
}
