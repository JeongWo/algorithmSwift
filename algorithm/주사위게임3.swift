import Foundation

func Dsolution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    var countArray = Array(repeating: 0, count: 6)
    countArray[a-1] += 1
    countArray[b-1] += 1
    countArray[c-1] += 1
    countArray[d-1] += 1
    
    var answer = 0
    
    if countArray.contains(4) {
        answer = 1111 * (countArray.firstIndex(of: 4)! + 1)
        debugPrint(answer)
        
    } else if countArray.contains(3) {
        let p = Double(countArray.firstIndex(of: 3)! + 1)
        let q = Double(countArray.firstIndex(of: 1)! + 1)
        answer = Int(pow(10 * p + q, 2))
        debugPrint(answer)
    } else if countArray.filter({$0 == 2}).count == 2 {
        let p = countArray.firstIndex(of: 2)! + 1
        let q = countArray.lastIndex(of: 2)! + 1
        answer = (p + q) * abs(p - q)
        debugPrint(answer)
    } else if countArray.filter({$0 == 2}).count == 1 && countArray.filter({$0 == 1}).count == 2 {
        let q = countArray.firstIndex(of: 1)! + 1
        let r = countArray.lastIndex(of: 1)! + 1
        answer = q * r
        debugPrint(answer)
    } else {
        answer = countArray.firstIndex(of: 1)! + 1
        debugPrint(answer)
    }
    
    return answer
}
