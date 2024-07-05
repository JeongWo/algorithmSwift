import Foundation

func fibonacci7() {
    let MOD = 1_000_000_007
    
    if let input = readLine(), let n = Int(input) {
        let result = fibonacci(n)
    }
    
    func fibonacci(_ n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        }
        
        var a = 0
        var b = 1
        
        for _ in 2...n {
            let temp = (a + b) % MOD
            a = b
            b = temp
        }
        
        return b
    }
    
}
