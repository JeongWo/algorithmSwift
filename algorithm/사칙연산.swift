import Foundation

func ArithmeticOperations() {
    
    func evaluateExpression(expression: String) -> String {
        let parts = expression.split(separator: " ")
        
        guard parts.count == 5 else { return "wrong answer" }
        
        let lhs = Int64(parts[0])!
        let operation = String(parts[1])
        let rhs = Int64(parts[2])!
        let equals = String(parts[3])
        let result = Int64(parts[4])!
        
        guard equals == "=" else { return "wrong answer" }
        
        var computedResult: Int64 = 0
        
        switch operation {
        case "+":
            computedResult = lhs + rhs
        case "-":
            computedResult = lhs - rhs
        case "*":
            computedResult = lhs * rhs
        case "/":
            computedResult = lhs / rhs
        default:
            return "wrong answer"
        }
        
        if computedResult == result {
            return "correct"
        } else {
            return "wrong answer"
        }
    }
    
    let t = Int(readLine()!)!
    for _ in 0..<t {
        let expression = readLine()!
        print(evaluateExpression(expression: expression))
    }
}
