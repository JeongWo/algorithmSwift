import Foundation

func threeNumberSort() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let sortedNumbers = input.sorted()
    
    print("\(sortedNumbers[0]) \(sortedNumbers[1]) \(sortedNumbers[2])")
}
