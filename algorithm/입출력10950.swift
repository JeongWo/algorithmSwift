import Foundation

func inputSolution3() {
    if let t = readLine().flatMap({Int($0)}) {
        for _ in 1...t {
            if let input = readLine() {
                let numbers = input.split(separator: " ").compactMap{ Int($0) }
                
                if numbers.count == 2{
                    let sum = numbers[0] + numbers[1]
                    print(sum)
                }
            }
        }
    }
}
