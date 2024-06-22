import Foundation



func sellPizza() {
    
    let targetSize = Int(readLine()!)!
    let mn = readLine()!.split(separator: " ").map { Int($0)! }
    let m = mn[0]
    let n = mn[1]
    
    var pizzaA = [Int]()
    var pizzaB = [Int]()
    
    for _ in 0..<m {
        pizzaA.append(Int(readLine()!)!)
    }
    for _ in 0..<n {
        pizzaB.append(Int(readLine()!)!)
    }
    
    func calculateSubSums(pizza: [Int]) -> [Int: Int] {
        var subSums = [Int: Int]()
        let len = pizza.count
        
        for size in pizza {
            subSums[size, default: 0] += 1
        }
        
        for i in 0..<len {
            var sum = pizza[i]
            for j in 1..<len-1 {
                sum += pizza[(i + j) % len]
                subSums[sum, default: 0] += 1
            }
        }
        
        let total = pizza.reduce(0, +)
        subSums[total, default: 0] += 1
        
        return subSums
    }
    
    let subSumsA = calculateSubSums(pizza: pizzaA)
    let subSumsB = calculateSubSums(pizza: pizzaB)
    
    var result = 0
    
    for (sumA, countA) in subSumsA {
        if sumA == targetSize {
            result += countA
        }
        if let countB = subSumsB[targetSize - sumA] {
            result += countA * countB
        }
    }
    
    if let countB = subSumsB[targetSize] {
        result += countB
    }
    
    print(result)
}
