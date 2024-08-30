import Foundation

func lineNumber() {
    if let inputN = readLine(), let N = Int(inputN) {
        for i in 1...N {
            if let line = readLine() {
                print("\(i). \(line)")
            }
        }
    }
}
