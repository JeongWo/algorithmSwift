import Foundation

func card1() {
    
    let N = Int(readLine()!)!
    
    var queue = Array(1...N)
    var discarded = [Int]()
    
    while queue.count > 1 {
        discarded.append(queue.removeFirst())
        queue.append(queue.removeFirst())
    }
    
    if !discarded.isEmpty {
        print(discarded.map { String($0) }.joined(separator: " "))
    }
    
    print(queue.first!)
}
