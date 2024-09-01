import Foundation

func changeOfSequence() {
    
    let firstLine = readLine()!.split(separator: " ")
    let N = Int(firstLine[0])!
    let K = Int(firstLine[1])!
    
    var A = readLine()!.split(separator: ",").map { Int($0)! }
    
    for _ in 0..<K {
        var B = [Int]()
        for i in 0..<(A.count - 1) {
            B.append(A[i + 1] - A[i])
        }
        A = B
    }
    
    print(A.map { String($0) }.joined(separator: ","))
}
