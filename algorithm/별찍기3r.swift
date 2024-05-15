import Foundation

func star3() {
    
    if let N = Int(readLine()!) {
        for i in (1...N).reversed() {
            print(String(repeating: "*", count: i))
        }
    }
}
