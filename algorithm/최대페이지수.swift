import Foundation

func MaximumNumberOfPages() {
    
    func maxPages(_ n: Int, _ m: Int, _ chapters: [(days: Int, pages: Int)]) -> Int {
        var dp = Array(repeating: 0, count: n + 1)
        
        for chapter in chapters {
            let days = chapter.days
            let pages = chapter.pages
            
            if days <= n {
                for j in stride(from: n, through: days, by: -1) {
                    dp[j] = max(dp[j], dp[j - days] + pages)
                }
            }
        }
        
        return dp.max()!
    }
    
    let firstLine = readLine()!.split(separator: " ").map { Int($0)! }
    let N = firstLine[0]
    let M = firstLine[1]
    
    var chapters: [(days: Int, pages: Int)] = []
    for _ in 0..<M {
        let chapter = readLine()!.split(separator: " ").map { Int($0)! }
        chapters.append((days: chapter[0], pages: chapter[1]))
    }
    
    let result = maxPages(N, M, chapters)
    print(result)
}
