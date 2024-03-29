import Foundation

func suffixArrangement()  {
    
    if let S = readLine() {
        var suffixes: [Substring] = []
        
        for i in S.indices {
            suffixes.append(S[i...])
        }
        
        for i in 0..<suffixes.count {
            for j in 0..<(suffixes.count - i - 1) {
                if suffixes[j] > suffixes[j + 1] {
                    suffixes.swapAt(j, j + 1)
                }
            }
        }
        
        for suffix in suffixes {
            print(suffix)
        }
    }
}
