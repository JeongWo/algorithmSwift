import Foundation

func prtBar() {
    let input = Array(readLine()!)
    
    var stackCount = 0
    var result = 0
    
    for i in 0..<input.count {
        if input[i] == "(" {
            stackCount += 1
        } else {
            stackCount -= 1
            if input[i - 1] == "(" {
                result += stackCount
            } else {
                result += 1
            }
        }
    }
    
    print(result)
}
