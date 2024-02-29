import Foundation

func inputSoluiton13() {
    
    if let N = Int(readLine()!) {
        for i in 1...N {
            print(String(repeating: "*", count: i))
        }
    }
}
