import Foundation

func picture(_ picture:[String], _ k:Int) -> [String] {
    var answer:[String] = []
    
    for row in picture {
        var newRow = ""
        for pixel in row {
            newRow += String(repeating: pixel, count: k)
        }
        for _ in 0..<k {
            answer.append(newRow)
        }
    }
    return answer
}
