import Foundation

func _solution(_ friends:[String], _ gifts:[String]) -> Int {
    var friendIndices = [String: Int]()
    var giftTable = [[Int]](repeating: [Int](repeating: 0, count: friends.count), count: friends.count)
    var presents = [Int](repeating: 0, count: friends.count)
    
    
    for i in 0..<friends.count {
        friendIndices[friends[i]] = i
    }
    
    for gift in gifts {
        let components = gift.components(separatedBy: "")
        guard let giverIndex = friendIndices[components[0]],
              let takerIndex = friendIndices[components[1]] else {
            continue
        }
        giftTable[giverIndex][takerIndex] += 1
    }
    
    var giftIndices = [Int](repeating: 0, count: friends.count)
    for i in 0..<friends.count {
        giftIndices[i] = giftTable[i].reduce(0, +) - giftTable.reduce(0, {$0 + $1[i]})
    }
    
    for i in 0..<friends.count {
        for j in i+1..<friends.count {
            if giftTable[i][j] > giftTable[j][i] {
                presents[i] += 1
            } else if giftTable[j][i] > giftTable[i][j]{
                presents[j] += 1
            } else {
                if giftIndices[i]>giftIndices[j] {
                    presents[i] += 1
                }
                if giftIndices[j]>giftIndices[i]{
                    presents[j] += 1
                }
            }
        }
    }
    return presents.max() ?? 0
}
