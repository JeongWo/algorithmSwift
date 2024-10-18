import Foundation

func comparisonOperators() {
 
    var caseCount = 1
    
    while let line = readLine() {
        let components = line.split(separator: " ")
        
        if components[1] == "E" {
            break
        }
        
        let a = Int(components[0])!
        let op = String(components[1])
        let b = Int(components[2])!
        
        var result = false
        switch op {
        case ">":
            result = a > b
        case ">=":
            result = a >= b
        case "<":
            result = a < b
        case "<=":
            result = a <= b
        case "==":
            result = a == b
        case "!=":
            result = a != b
        default:
            break
        }
        
        print("Case \(caseCount): \(result ? "true" : "false")")
        caseCount += 1
    }
}
