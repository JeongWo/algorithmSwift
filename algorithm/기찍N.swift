import Foundation
func inputSolutionN() {
    
    if let N = Int(readLine()!) {
        for i in (1...N).reversed() {
            print(i)
        }
    }
}
