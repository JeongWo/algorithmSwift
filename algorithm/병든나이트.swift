import Foundation
func knight() {
    
    func maxVisitedCells(_ n: Int, _ m: Int) -> Int {
        if n == 1 {
            return 1
        } else if n == 2 {
            return min(4, (m + 1) / 2)
        }
        
        if m <= 6 {
            return min(4, m)
        }
        
        return m - 2
    }
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let m = input[1]
    
    print(maxVisitedCells(n, m))
}
