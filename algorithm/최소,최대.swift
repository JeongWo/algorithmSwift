import Foundation


func inputSolution12() {
    
    let N = Int(readLine()!)!
    let num = readLine()!.split(separator: " ").compactMap{ Int($0)! }
    
    if let minNum = num.min(), let maxNum = num.max() {
        print(minNum, maxNum)
    }
}
