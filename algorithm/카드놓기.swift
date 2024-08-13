import Foundation

func placeCard() {
    
    let n = Int(readLine()!)!
    let k = Int(readLine()!)!
    var cards = [String]()
    
    for _ in 0..<n {
        cards.append(readLine()!)
    }
    
    var results = Set<String>()
    
    func generateNumbers(_ selected: [String], _ remaining: [String]) {
        if selected.count == k {
            results.insert(selected.joined())
            return
        }
        
        for i in 0..<remaining.count {
            var newSelected = selected
            var newRemaining = remaining
            newSelected.append(remaining[i])
            newRemaining.remove(at: i)
            generateNumbers(newSelected, newRemaining)
        }
    }
    
    generateNumbers([], cards)
    
    print(results.count)
}
