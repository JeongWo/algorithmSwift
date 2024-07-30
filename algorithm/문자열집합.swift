import Foundation


func stringSet() {
    
    func readInput() -> (Int, Int, [String], [String]) {
        guard let firstLine = readLine() else {
            fatalError("Invalid input format for the first line.")
        }
        
        let n_m = firstLine.split(separator: " ").compactMap { Int($0) }
        let N = n_m[0]
        let M = n_m[1]
        
        var setS = [String]()
        var checkStrings = [String]()
        
        for _ in 0..<N {
            if let line = readLine() {
                setS.append(line)
            }
        }
        
        for _ in 0..<M {
            if let line = readLine() {
                checkStrings.append(line)
            }
        }
        
        return (N, M, setS, checkStrings)
    }
    
    func countMatchingStrings(setS: [String], checkStrings: [String]) -> Int {
        let setSetS = Set(setS)
        var count = 0
        
        for str in checkStrings {
            if setSetS.contains(str) {
                count += 1
            }
        }
        
        return count
    }
    
    let (N, M, setS, checkStrings) = readInput()
    
    let result = countMatchingStrings(setS: setS, checkStrings: checkStrings)
    
    print(result)
}
