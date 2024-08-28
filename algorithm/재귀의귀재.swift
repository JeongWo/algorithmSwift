import Foundation

func recursionRecursion() {
    var recursionCount = 0
    
    func recursion(_ s: [Character], _ l: Int, _ r: Int) -> Int {
        recursionCount += 1
        if l >= r {
            return 1
        } else if s[l] != s[r] {
            return 0
        } else {
            return recursion(s, l + 1, r - 1)
        }
    }
    
    func isPalindrome(_ s: String) -> (Int, Int) {
        let sArray = Array(s)
        recursionCount = 0
        let result = recursion(sArray, 0, sArray.count - 1)
        return (result, recursionCount)
    }
    
    let testCaseCount = Int(readLine()!)!
    
    for _ in 0..<testCaseCount {
        let inputString = readLine()!
        let (result, count) = isPalindrome(inputString)
        print("\(result) \(count)")
    }
}
