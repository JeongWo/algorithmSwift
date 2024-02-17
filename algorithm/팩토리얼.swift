import Foundation

func mathSoiltion15() {
    
    
    if let N = Int(readLine()!) {
        var factorial = 1
        if N > 0 {
            for i in 1...N {
                factorial *= i
            }
        }
        print(factorial)
    }
}
