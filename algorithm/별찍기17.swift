import Foundation

func inputSolution22() {
    
    if let N = Int(readLine()!) {
        for i in 0..<N {
            for _ in 0..<(N - i - 1) {
                print(" ", terminator: "")
            }
            for j in 0..<(2 * i + 1) {
                if i == 0 || i == N - 1 {
                    print("*", terminator: "")
                } else {
                    if j == 0 || j == 2 * i {
                        print("*", terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
            }
            print()
        }
    }
}
