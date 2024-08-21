import Foundation

func flip() {
    if let S = readLine() {
        var count0 = 0
        var count1 = 0
        
        if S.first == "0" {
            count0 += 1
        } else {
            count1 += 1
        }
        
        for i in 1..<S.count {
            let index = S.index(S.startIndex, offsetBy: i)
            let prevIndex = S.index(S.startIndex, offsetBy: i - 1)
            
            if S[index] != S[prevIndex] {
                if S[index] == "0" {
                    count0 += 1
                } else {
                    count1 += 1
                }
            }
        }
        print(min(count0, count1))
    }
}
