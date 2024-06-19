import Foundation

func partialSum() {
    
    let ns = readLine()!.split(separator: " ").map{ Int($0)! }
    let n = ns[0]
    let s = ns[1]
    let arr = readLine()!.split(separator: " ").map{ Int($0)! }
    
    var sum = 0
    var minLength = Int.max
    var start = 0
    
    for end in 0..<n {
        sum += arr[end]
        
        while sum >= s {
            minLength = min(minLength, end - start + 1)
            sum -= arr[start]
            start += 1
        }
    }
    print(minLength == Int.max ? 0 : minLength)
}
