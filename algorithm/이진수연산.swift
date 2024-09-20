import Foundation

func binaryOperations() {
    
    let A = Array(readLine()!).map { $0 == "1" ? 1 : 0 }
    let B = Array(readLine()!).map { $0 == "1" ? 1 : 0 }
    
    var andResult = [Int](repeating: 0, count: A.count)
    var orResult = [Int](repeating: 0, count: A.count)
    var xorResult = [Int](repeating: 0, count: A.count)
    var notAResult = [Int](repeating: 0, count: A.count)
    var notBResult = [Int](repeating: 0, count: A.count)
    
    for i in 0..<A.count {
        andResult[i] = A[i] & B[i]
        orResult[i] = A[i] | B[i]
        xorResult[i] = A[i] ^ B[i]
        notAResult[i] = A[i] == 1 ? 0 : 1
        notBResult[i] = B[i] == 1 ? 0 : 1
    }
    
    let andString = andResult.map { String($0) }.joined()
    let orString = orResult.map { String($0) }.joined()
    let xorString = xorResult.map { String($0) }.joined()
    let notAString = notAResult.map { String($0) }.joined()
    let notBString = notBResult.map { String($0) }.joined()
    
    print(andString)
    print(orString)
    print(xorString)
    print(notAString)
    print(notBString)
}
