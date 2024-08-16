import Foundation

func noise() {
    
    let A = readLine()!
    let operatorSymbol = readLine()!
    let B = readLine()!
    
    if operatorSymbol == "+" {
        if A.count > B.count {
            print(A.prefix(A.count - B.count) + B)
        } else if B.count > A.count {
            print(B.prefix(B.count - A.count) + A)
        } else {
            let result = "2" + A.dropFirst()
            print(result)
        }
    } else if operatorSymbol == "*" {
        let zerosCount = (A.count - 1) + (B.count - 1)
        let result = "1" + String(repeating: "0", count: zerosCount)
        print(result)
    }
}
