import Foundation

func inputSolution24() {
    
    if let T = Int(readLine()!) {
        for _ in 0..<T {
            if let input = readLine()?.split(separator: " ").compactMap({ Int($0) }) {
                let A = input[0]
                let B = input[1]
                print(A + B)
            }
        }
    }
}
