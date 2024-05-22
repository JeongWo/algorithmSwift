import Foundation

func makePassword() {
    
    guard let LC = readLine()?.split(separator: " ").compactMap({ Int($0) }) else {
        fatalError("Invalid input")
    }
    
    let L = LC[0]
    let C = LC[1]
    
    var charList = readLine()!.split(separator: " ").map { String($0) }.sorted(by: <)
    var visited = Array(repeating: false, count: C)
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    var result: [String] = []
    
    func dfs(depth: Int, start: Int) {
        if depth == L {
            let containVowels = result.contains { vowels.contains($0.first!) }
            let consonantCnt = result.reduce(0) { $0 + (vowels.contains($1.first!) ? 0 : 1) }
            
            if containVowels && consonantCnt >= 2 {
                print(result.joined())
            }
            return
        }
        
        for i in start..<C {
            if !visited[i] {
                visited[i] = true
                result.append(charList[i])
                dfs(depth: depth + 1, start: i + 1)
                visited[i] = false
                result.removeLast()
            }
        }
    }
    
    dfs(depth: 0, start: 0)
}
