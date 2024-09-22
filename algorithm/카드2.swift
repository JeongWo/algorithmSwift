import Foundation

func card2() {
    let N = Int(readLine()!)!
    var queue = [Int](1...N)
    var front = 0
    
    while queue.count - front > 1 {
        front += 1
        
        queue.append(queue[front])
        front += 1
    }
    
    print(queue[front])
}
