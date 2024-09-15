import Foundation

func lostBracket() {
    
    func minimizeExpression(_ expression: String) -> Int {
        let parts = expression.split(separator: "-")
        
        var result = parts[0].split(separator: "+").map { Int($0)! }.reduce(0, +)
        
        for i in 1..<parts.count {
            let subSum = parts[i].split(separator: "+").map { Int($0)! }.reduce(0, +)
            result -= subSum
        }
        
        return result
    }
    
    if let input = readLine() {
        let result = minimizeExpression(input)
        print(result)
    }
}
