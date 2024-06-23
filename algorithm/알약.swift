import Foundation

func pills() {
    
    var memo = [String: Int]()
    
    func countWays(_ whole: Int, _ half: Int) -> Int {
        if whole == 0 { return 1 }
        if half < 0 { return 0 }
        let key = "\(whole)-\(half)"
        
        if let value = memo[key] {
            return value
        }
        
        var ways = 0
        
        if whole > 0 {
            ways += countWays(whole - 1, half + 1)
        }
        
        if half > 0 {
            ways += countWays(whole, half - 1)
        }
        
        memo[key] = ways
        return ways
    }
    
    var inputs = [Int]()
    while let line = readLine(), let n = Int(line), n != 0 {
        inputs.append(n)
    }
    
    for n in inputs {
        print(countWays(n, 0))
    }
    
}
