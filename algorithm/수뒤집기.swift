import Foundation

func reversdNumber() {
    
    func isPalindrome(_ num: Int) -> Bool {
        let str = String(num)
        return str == String(str.reversed())
    }
    
    func reversedNumber(_ num: Int) -> Int {
        let reversedStr = String(String(num).reversed())
        return Int(reversedStr) ?? 0
    }
    
    if let t = Int(readLine() ?? "0") {
        for _ in 0..<t {
            if let n = Int(readLine() ?? "0") {
                let reversedN = reversedNumber(n)
                let sum = n + reversedN
                
                if isPalindrome(sum) {
                    print("YES")
                } else {
                    print("NO")
                }
            }
        }
    }
}
