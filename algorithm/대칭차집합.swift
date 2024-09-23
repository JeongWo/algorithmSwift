import Foundation

func symmetricDifferenceSet() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let aCount = input[0]
    let bCount = input[1]
    
    let setA = Set(readLine()!.split(separator: " ").map { Int($0)! })
    let setB = Set(readLine()!.split(separator: " ").map { Int($0)! })
    
    let symmetricDifference = setA.symmetricDifference(setB)
    
    print(symmetricDifference.count)
}
