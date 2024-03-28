import Foundation

func vps() {
    
    func isValidString(_ string: String) -> Bool {
        var stack = [Character]()
        
        for char in string {
            if char == "(" {
                stack.append(char)
            } else if char == ")" {
                if stack.isEmpty {
                    return false
                }
                stack.removeLast()
            }
        }
        return stack.isEmpty
    }
    
    guard let T = Int(readLine()!) else {
        fatalError("Invalid input")
    }
    
    for _ in 0..<T {
        if let isString = readLine() {
            if isValidString(isString) {
                print("YES")
            } else {
                print("NO")
            }
        }
    }
}
