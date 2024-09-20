import Foundation

func rings() {
    let target = readLine()!
    let N = Int(readLine()!)!
    
    var count = 0
    
    for _ in 0..<N {
        let ring = readLine()!
        let doubledRing = ring + ring
        if doubledRing.contains(target) {
            count += 1
        }
    }
    
    print(count)
}
