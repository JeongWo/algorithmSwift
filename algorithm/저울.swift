import Foundation

func scale() {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    
    var isHeavier = Array(repeating: Array(repeating: false, count: n + 1), count: n + 1)
    
    for _ in 0..<m {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let heavier = input[0]
        let lighter = input[1]
        isHeavier[heavier][lighter] = true
    }
    
    for k in 1...n {
        for i in 1...n {
            for j in 1...n {
                if isHeavier[i][k] && isHeavier[k][j] {
                    isHeavier[i][j] = true
                }
            }
        }
    }
    
    for i in 1...n {
        var count = 0
        for j in 1...n {
            if i != j && !isHeavier[i][j] && !isHeavier[j][i] {
                count += 1
            }
        }
        print(count)
    }
}
