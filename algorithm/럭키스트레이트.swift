import Foundation


func luckyStraight() {
    let n = readLine()!
    
    let length = n.count / 2
    
    let firstHalf = n.prefix(length)
    let secondHalf = n.suffix(length)
    
    let sumFirstHalf = firstHalf.reduce(0) { $0 + Int(String($1))! }
    let sumSecondHalf = secondHalf.reduce(0) { $0 + Int(String($1))! }
    
    if sumFirstHalf == sumSecondHalf {
        print("LUCKY")
    } else {
        print("READY")
    }
}
