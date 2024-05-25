import Foundation

func star4() {
    
    if let N = Int(readLine()!) {
        for i in 1...N {
            let spaces = String(repeating: " ", count: i - 1)
            let stars = String(repeating: "*", count: N - (i - 1))
            print(spaces + stars)
        }
    }
}
