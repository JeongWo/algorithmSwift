import Foundation

func factorial() {
    func countT(_ N: Int) -> Int {
        var count = 0
        var divisor = 5
        
        while N / divisor > 0 {
            count += N / divisor
            divisor *= 5
        }
        
        return count
    }
    
    if let N = Int(readLine() ?? "0") {
        print(countT(N))
    }
}
