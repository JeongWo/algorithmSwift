import Foundation

func signage() {
    
    func canFormSign(storeName: String, oldSign: String) -> Bool {
        let nameLength = storeName.count
        let signLength = oldSign.count
        
        if nameLength > signLength {
            return false
        }
        
        let storeNameArray = Array(storeName)
        let oldSignArray = Array(oldSign)
        
        for gap in 1...(signLength / (nameLength - 1)) {
            for start in 0..<(signLength - nameLength * gap + gap) {
                var match = true
                for i in 0..<nameLength {
                    if storeNameArray[i] != oldSignArray[start + i * gap] {
                        match = false
                        break
                    }
                }
                if match {
                    return true
                }
            }
        }
        
        return false
    }
    
    let n = Int(readLine()!)!
    let storeName = readLine()!
    var count = 0
    
    for _ in 0..<n {
        let oldSign = readLine()!
        if canFormSign(storeName: storeName, oldSign: oldSign) {
            count += 1
        }
    }
    
    print(count)
}
