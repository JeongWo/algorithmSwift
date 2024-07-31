import Foundation

func PalindromesNo() {
    
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        let n = chars.count
        for i in 0..<(n / 2) {
            if chars[i] != chars[n - i - 1] {
                return false
            }
        }
        return true
    }
    
    func longestNonPalindromeSubstringLength(_ s: String) -> Int {
        if !isPalindrome(s) {
            return s.count
        }
        
        let chars = Array(s)
        let n = chars.count
        
        var allSame = true
        for i in 1..<n {
            if chars[i] != chars[0] {
                allSame = false
                break
            }
        }
        
        if allSame {
            return -1
        }
        
        return n - 1
    }
    
    if let input = readLine() {
        let result = longestNonPalindromeSubstringLength(input)
        print(result)
    }
}
