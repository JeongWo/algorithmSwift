import Foundation

func mathsolution17() {
    let testCase = 1000000
    var isPrimeArray = Array(repeating: true, count: testCase+1)
    
    for i in 2...testCase {
        if isPrimeArray[i] == false {continue}
        
        for j in stride(from: i+i, through: testCase, by: i) {
            isPrimeArray[j] = false
        }
    }
    
    while true {
        let n = Int(readLine()!)!
        
        if n == 0 {break}
        
        for a in 3...n {
            if isPrimeArray[a] {
                let b = n-a
                if isPrimeArray[b] {
                    print("\(n) = \(a) + \(b)")
                    break
                }
            }
        }
    }
}
