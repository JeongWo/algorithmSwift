import Foundation

func securityAlgorithm() {
    
    func decryptSentence(n: Int, key1: [String], key2: [String], encrypted: [String]) -> String {
        
        var keyMap = [String: Int]()
        for i in 0..<n {
            keyMap[key2[i]] = i
        }
        
        var decrypted = Array(repeating: "", count: n)
        
        for i in 0..<n {
            let indexInKey2 = keyMap[key1[i]]!
            decrypted[i] = encrypted[indexInKey2]
        }
        
        return decrypted.joined(separator: " ")
    }
    
    let testCases = Int(readLine()!)!
    
    for _ in 0..<testCases {
        let n = Int(readLine()!)!
        let key1 = readLine()!.split(separator: " ").map { String($0) }
        let key2 = readLine()!.split(separator: " ").map { String($0) }
        let encrypted = readLine()!.split(separator: " ").map { String($0) }
        
        let decryptedSentence = decryptSentence(n: n, key1: key1, key2: key2, encrypted: encrypted)
        print(decryptedSentence)
    }
}
