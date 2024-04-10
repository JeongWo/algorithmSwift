import Foundation

func sum2() {
    
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let N = input[0]
    let M = input[1]
    
    let numbers = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    var count = 0
    var sum = 0
    var left = 0
    
    for right in 0..<N {
        sum += numbers[right]
        
        while sum > M {
            sum -= numbers[left]
            left += 1
        }
        
        if sum == M {
            count += 1
        }
    }
    
    print(count)
}
