import Foundation

func star5() {
    
    if let N = Int(readLine()!) {
        for i in 1...N {
            let spaces = String(repeating: " ", count: N - i)
            let stars = String(repeating: "*", count: 2 * i - 1)
            print(spaces + stars)
        }
    }
}
