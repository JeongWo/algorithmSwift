import Foundation

func StringRc() {
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let input = readLine()!
        
        let firstCharacter = input.first!
        let lastCharacter = input.last!
        
        print("\(firstCharacter)\(lastCharacter)")
    }
}
