import Foundation


func string() {
    
    func minimumDifference(_ A: String, _ B: String) -> Int {
        let aArray = Array(A)
        let bArray = Array(B)
        let aLen = aArray.count
        let bLen = bArray.count
        
        var minDifference = Int.max
        
        for i in 0...(bLen - aLen) {
            var difference = 0
            for j in 0..<aLen {
                if aArray[j] != bArray[i + j] {
                    difference += 1
                }
            }
            minDifference = min(minDifference, difference)
        }
        
        return minDifference
    }
    
    if let input = readLine() {
        let inputs = input.split(separator: " ")
        let A = String(inputs[0])
        let B = String(inputs[1])
        
        let result = minimumDifference(A, B)
        print(result)
    }
}
