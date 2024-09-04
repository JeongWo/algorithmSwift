import Foundation


func fullTimeChessboard() {
    func printChessboard(R: Int, C: Int, A: Int, B: Int) {
        for i in 0..<R {
            for _ in 0..<A {
                var row = ""
                for j in 0..<C {
                    let char = (i + j) % 2 == 0 ? "X" : "."
                    row += String(repeating: char, count: B)
                }
                print(row)
            }
        }
    }
    
    if let firstLine = readLine(), let secondLine = readLine() {
        let rc = firstLine.split(separator: " ").compactMap { Int($0) }
        let ab = secondLine.split(separator: " ").compactMap { Int($0) }
        
        if rc.count == 2 && ab.count == 2 {
            let R = rc[0], C = rc[1]
            let A = ab[0], B = ab[1]
            printChessboard(R: R, C: C, A: A, B: B)
        }
    }
}
