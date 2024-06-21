import Foundation

func sumOfPartialSequences2() {
    
    /// Specialized tools to quickly read numbers from your computer
    
    final class FileIO {
        private let buffer:[UInt8]
        private var index: Int = 0
        
        init(fileHandle: FileHandle = FileHandle.standardInput) {
            buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
        }
        
        /// Inline function: A function whose body is inserted directly at the call site, eliminating function call overhead.
        @inline(__always) private func read() -> UInt8 {
            defer { index += 1 }
            return buffer[index]
        }
        
        @inline(__always) func readInt() -> Int {
            var sum = 0
            var now = read()
            var isPositive = true
            
            while now == 10 || now == 32 { now = read() }
            if now == 45 { isPositive.toggle(); now = read() }
            while now >= 48, now <= 57 {
                sum = sum * 10 + Int(now-48)
                now = read()
            }
            
            return isPositive ? sum : -sum
        }
    }
    
    
    
    let fileIO = FileIO()
    
    /// readInt is in FileIO and is responsible for quickly reading a single number.
    let n = fileIO.readInt()
    let s = fileIO.readInt()
    
    var sequence = [Int]()
    for _ in 0..<n {
        sequence.append(fileIO.readInt())
    }
    
    let mid = n / 2
    let leftHalf = Array(sequence[..<mid])
    let rightHalf = Array(sequence[mid...])
    
    /// The generateSums function computes the sum of all possible parts of a given list
    let leftSums = generateSums(leftHalf)
    let rightSums = generateSums(rightHalf)
    
    var count = 0
    
    for (sum, freq) in leftSums {
        count += freq * (rightSums[s - sum] ?? 0)
    }
    
    if s == 0 {
        count -= 1
    }
    
    print(count)
    
    
    
    func generateSums(_ arr: [Int]) -> [Int: Int] {
        var sums = [Int: Int]()
        let n = arr.count
        
        for i in 0..<(1 << n) {
            var sum = 0
            for j in 0..<n {
                if (i & (1 << j)) != 0 {
                    sum += arr[j]
                }
            }
            sums[sum, default: 0] += 1
        }
        
        return sums
    }
}
