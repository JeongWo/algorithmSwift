import Foundation

func RebelHamburger() {
    
    func countPatties(N: Int, X: Int) -> Int {
        var totalLayers = [1]
        var totalPatties = [1]
        
        for i in 1...N {
            totalLayers.append(2 * totalLayers[i-1] + 3)
            totalPatties.append(2 * totalPatties[i-1] + 1)
        }
        
        func countPattiesRecursive(n: Int, x: Int) -> Int {
            if n == 0 {
                return x > 0 ? 1 : 0
            }
            if x <= 1 {
                return 0
            } else if x <= totalLayers[n-1] + 1 {
                return countPattiesRecursive(n: n-1, x: x-1)
            } else if x == totalLayers[n-1] + 2 {
                return totalPatties[n-1] + 1
            } else if x <= 2 * totalLayers[n-1] + 2 {
                return totalPatties[n-1] + 1 + countPattiesRecursive(n: n-1, x: x - totalLayers[n-1] - 2)
            } else {
                return 2 * totalPatties[n-1] + 1
            }
        }
        
        return countPattiesRecursive(n: N, x: X)
    }
    
    if let input = readLine() {
        let parts = input.split(separator: " ").map { Int($0)! }
        let N = parts[0]
        let X = parts[1]
        print(countPatties(N: N, X: X))
    }
}
