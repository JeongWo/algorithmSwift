import Foundation

func BABBA() {
    
    if let input = readLine(), let k = Int(input) {
        let result = fibonacciCounts(k: k)
        print("\(result.0) \(result.1)")
    }
    
    func fibonacciCounts(k: Int) -> (Int, Int) {
        var aCount = [1, 0]
        var bCount = [0, 1]
        
        if k == 0 {
            return (aCount[0], bCount[0])
        }
        
        for _ in 1...k {
            let newACount = bCount[0]
            let newBCount = aCount[0] + bCount[0]
            
            aCount[0] = newACount
            bCount[0] = newBCount
        }
        
        return (aCount[0], bCount[0])
    }
}
