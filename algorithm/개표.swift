import Foundation

func countingVotes() {
    
    let V = Int(readLine()!)!
    let votes = readLine()!
    
    var countA = 0
    var countB = 0
    
    for vote in votes {
        if vote == "A" {
            countA += 1
        } else if vote == "B" {
            countB += 1
        }
    }
    
    if countA > countB {
        print("A")
    } else if countB > countA {
        print("B")
    } else {
        print("Tie")
    }
}
