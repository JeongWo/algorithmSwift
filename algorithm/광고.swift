import Foundation

func advertisements() {
    
    func getFailureFunction(_ s: String) -> [Int] {
        let n = s.count
        let sArray = Array(s)
        var failure = [Int](repeating: 0, count: n)
        
        var j = 0
        for i in 1..<n {
            while j > 0 && sArray[i] != sArray[j] {
                j = failure[j - 1]
            }
            if sArray[i] == sArray[j] {
                j += 1
                failure[i] = j
            }
        }
        return failure
    }
    
    func shortestAdLength(_ L: Int, _ ad: String) -> Int {
        let failure = getFailureFunction(ad)
        let repeatedLength = failure[L - 1]
        return L - repeatedLength
    }
    
    if let L = Int(readLine()!), let ad = readLine() {
        let result = shortestAdLength(L, ad)
        print(result)
    }
}
