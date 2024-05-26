import Foundation

func star8() {
    
    if let N = Int(readLine()!) {
        
        for i in 1...N {
            let stars = String(repeating: "*", count: i)
            let spaces = String(repeating: " ", count: 2*N - 2*i)
            print(stars + spaces + stars)
        }
        
        for i in (1..<N).reversed() {
            let stars = String(repeating: "*", count: i)
            let spaces = String(repeating: " ", count: 2*N - 2*i)
            print(stars + spaces + stars)
        }
        
    }
}
