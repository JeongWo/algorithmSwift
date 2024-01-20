import Foundation


func solution10819() {
    
let n = Int(String(readLine()!))!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
var sum = 1

func calculateProduct(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    return n * calculateProduct(n - 1)
}

sum = calculateProduct(n)

var answer = 0

for _ in 0..<sum {
    var nowSum = 0
    for i in 0..<arr.count - 1 {
        nowSum += abs(arr[i] - arr[i + 1])
    }
    
    answer = max(answer, nowSum)
    
    var index = 0
    for i in 0..<n {
        if i + 1 < n, arr[i] < arr[i + 1] {
            index = i
        }
    }
    
    var bigIndex = 0
    for j in 0..<n {
        if arr[index] < arr[j] {
            bigIndex = j
        }
    }
    arr.swapAt(index, bigIndex)
    arr = Array(arr[0...index]) + arr[(index + 1)..<arr.count].sorted()
}

print(answer)
}
