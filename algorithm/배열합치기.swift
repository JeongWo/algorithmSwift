import Foundation

func mergedArray() {
        
    func mergeSortArrays(_ arrayA: [Int], _ arrayB: [Int]) -> [Int] {
        var mergedArray = arrayA + arrayB
        mergedArray.sort()
        return mergedArray
    }
    
    let sizes = readLine()!.split(separator: " ").map { Int($0)! }
    let sizeA = sizes[0]
    let sizeB = sizes[1]
    
    let arrayA = readLine()!.split(separator: " ").map { Int($0)! }
    let arrayB = readLine()!.split(separator: " ").map { Int($0)! }
    
    let result = mergeSortArrays(arrayA, arrayB)
    print(result.map { String($0) }.joined(separator: " "))
    
}
