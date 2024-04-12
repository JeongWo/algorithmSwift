import Foundation

func lotto() {
    
    var intArr: [Int] = []
    var n: Int = 0
    
    func dfs(_ start: Int, _ depth: Int, _ str: String) {
        if depth == 6 {
            print(str)
            return
        }
        
        for i in start..<n {
            let remainingArraySize = n - i
            if depth + remainingArraySize < 6 { return }
            else { dfs(i + 1, depth + 1, str + "\(intArr[i]) ") }
        }
    }
    
    while true {
        guard let input = readLine()?.split(separator: " ").compactMap({ Int($0) }) else { continue }
        
        if input[0] == 0 { break }
        else { n = input[0] }
        
        intArr = Array(input[1...n])
        
        dfs(0, 0, "")
        print()
    }
}
