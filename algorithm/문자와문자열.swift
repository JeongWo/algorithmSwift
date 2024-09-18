import Foundation

func charactersAndStrings() {
    
    if let S = readLine(), let i = readLine(), let index = Int(i) {
        let charIndex = S.index(S.startIndex, offsetBy: index - 1)
        print(S[charIndex])
    }
}
