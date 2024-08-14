import Foundation


func numberOfDifferentSubstring() {
    func countUniqueSubstrings(_ s: String) -> Int {
        let n = s.count
        let suffixes = (0..<n).map { s.suffix(n - $0) }.sorted()
        var count = n * (n + 1) / 2
        
        for i in 1..<n {
            let commonPrefix = zip(suffixes[i-1], suffixes[i]).prefix(while: { $0 == $1 }).count
            count -= commonPrefix
        }
        
        return count
    }
    
    if let input = readLine() {
        let result = countUniqueSubstrings(input)
        print(result)
    }
}
