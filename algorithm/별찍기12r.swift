import Foundation

func star12() {
    
    if let N = Int(readLine()!) {
        for i in 1...N {
            let stars = String(repeating: "*", count: i)
            let spaces = String(repeating: " ", count: N - i)
            print(spaces + stars)
        }
        for i in (1..<N).reversed() {
            let stars = String(repeating: "*", count: i)
            let spaces = String(repeating: " ", count: N - i)
            print(spaces + stars)
        }
    }
}
