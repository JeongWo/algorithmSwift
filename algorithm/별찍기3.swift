import Foundation

func inputSolution15() {
    
    if let N = Int(readLine()!) {
        for i in (1...N).reversed() {
            print(String(repeating: "*", count: i))
        }
    }
}
