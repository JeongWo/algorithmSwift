import Foundation

func DNA() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let m = input[1]
    
    var dnaStrings = [String]()
    for _ in 0..<n {
        dnaStrings.append(readLine()!)
    }
    
    var resultDNA = ""
    var hammingDistanceSum = 0
    
    for i in 0..<m {
        var counts = [Character: Int]()
        
        for j in 0..<n {
            let char = dnaStrings[j][dnaStrings[j].index(dnaStrings[j].startIndex, offsetBy: i)]
            counts[char, default: 0] += 1
        }
        
        let bestChar = counts.sorted { (lhs, rhs) -> Bool in
            if lhs.value == rhs.value {
                return lhs.key < rhs.key
            }
            return lhs.value > rhs.value
        }.first!.key
        
        resultDNA.append(bestChar)
        
        for j in 0..<n {
            let char = dnaStrings[j][dnaStrings[j].index(dnaStrings[j].startIndex, offsetBy: i)]
            if char != bestChar {
                hammingDistanceSum += 1
            }
        }
    }
    
    print(resultDNA)
    print(hammingDistanceSum)
}
