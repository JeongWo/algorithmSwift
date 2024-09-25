import Foundation

func copyMastery() {
    
    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let input = readLine()!.split(separator: " ").map { String($0) }
        let s = input[0]
        let p = input[1]
        
        let sArray = Array(s)
        let pArray = Array(p)
        
        var time = 0
        var i = 0
        
        while i < sArray.count {
            if i + pArray.count <= sArray.count && Array(sArray[i..<i + pArray.count]) == pArray {
                time += 1
                i += pArray.count
            } else {
                time += 1
                i += 1
            }
        }
        
        print(time)
    }
}
