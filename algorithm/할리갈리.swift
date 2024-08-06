import Foundation

func haligali() {
    let n = Int(readLine()!)!
    
    var fruitCounts: [String: Int] = ["STRAWBERRY": 0, "BANANA": 0, "LIME": 0, "PLUM": 0]
    
    for _ in 0..<n {
        let line = readLine()!.split(separator: " ")
        let fruit = String(line[0])
        let count = Int(line[1])!
        
        fruitCounts[fruit]! += count
    }
    
    let result = fruitCounts.values.contains(5) ? "YES" : "NO"
    
    print(result)
}
