import Foundation

func cardSets() {
    let input = readLine()!
    
    var seenCards = Set<String>()
    var pCount = 0, kCount = 0, hCount = 0, tCount = 0
    
    var isDuplicate = false
    
    for i in stride(from: 0, to: input.count, by: 3) {
        let cardIndex = input.index(input.startIndex, offsetBy: i)
        let card = String(input[cardIndex..<input.index(cardIndex, offsetBy: 3)])
        
        if seenCards.contains(card) {
            isDuplicate = true
            break
        } else {
            seenCards.insert(card)
        }
        
        let suit = card.first!
        switch suit {
        case "P": pCount += 1
        case "K": kCount += 1
        case "H": hCount += 1
        case "T": tCount += 1
        default: break
        }
    }
    
    if isDuplicate {
        print("GRESKA")
    } else {
        print("\(13 - pCount) \(13 - kCount) \(13 - hCount) \(13 - tCount)")
    }
}
