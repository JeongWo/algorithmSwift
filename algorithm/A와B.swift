import Foundation

func AAndB() {
    
    let S = readLine()!
    var T = readLine()!
    
    while T.count > S.count {
        if T.last == "A" {
            T.removeLast()
        } else if T.last == "B" {
            
            T.removeLast()
            T = String(T.reversed())
        }
    }
    print(S == T ? 1 : 0)
    
}
