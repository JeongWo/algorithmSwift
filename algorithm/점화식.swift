import Foundation

func Ignited() {
    
    let n = Int(readLine()!)!
    
    func calculateT(n: Int) -> Int {
        var t = [Int](repeating: 0, count: n + 1)
        t[0] = 1
        
        if n == 0 {
            return t[0]
        }
        
        for i in 1...n {
            var sum = 0
            for j in 0..<i {
                sum += t[j] * t[i - 1 - j]
            }
            t[i] = sum
        }
        
        return t[n]
    }
    
    let result = calculateT(n: n)
    print(result)
}
