import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var count = 0
    let patLength = pat.count
    let myStringLength = myString.count
    
    if patLength == 0 || patLength > myStringLength {
        return 0
    }
    
    for i in 0...(myStringLength - patLength) {
        let startIndex = myString.index(myString.startIndex, offsetBy: i)
        let endIndex = myString.index(startIndex, offsetBy: patLength)
        let subString = myString[startIndex..<endIndex]
        
        if subString == pat {
            count += 1
        }
    }
    
    return count
}
