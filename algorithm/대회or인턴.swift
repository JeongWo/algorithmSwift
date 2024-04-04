import Foundation

func team() {
    
    func teamCount(N: Int, M: Int, K: Int) -> Int {
        let team = min(N / 2, M)
        let maxTeams = min(team, (N + M - K) / 3)
        
        return maxTeams
    }
    
    if let input = readLine()?.split(separator: " ").compactMap({ Int($0) }), input.count == 3 {
        let N = input[0]
        let M = input[1]
        let K = input[2]
        
        let result = teamCount(N: N, M: M, K: K)
        
        print(result)
    }
}
