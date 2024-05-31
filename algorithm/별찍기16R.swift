import Foundation

func star16R() {
    
    if let N = Int(readLine()!) {
        for i in 0..<N {
            for _ in 0..<(N - i - 1) {
                print(" ", terminator: "")
            }
            for _ in 0..<i + 1 {
                print("* ", terminator: "")
            }
            print()
        }
    }
}
