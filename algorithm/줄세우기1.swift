import Foundation

func lining() {
    if let n = Int(readLine()!), let tokens = readLine()?.split(separator: " ").map({ Int($0)! }) {
        var result = [Int]()
        
        for i in 0..<n {
            let position = tokens[i]
            result.insert(i + 1, at: result.count - position)
        }
        
        print(result.map { String($0) }.joined(separator: " "))
    }
}
