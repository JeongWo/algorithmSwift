import Foundation

func octalNumber() {
    
    let binary = readLine()!
    
    let paddedBinary = String(repeating: "0", count: (3 - binary.count % 3) % 3) + binary
    
    var result = ""
    
    for i in stride(from: 0, to: paddedBinary.count, by: 3) {
        let startIndex = paddedBinary.index(paddedBinary.startIndex, offsetBy: i)
        let endIndex = paddedBinary.index(startIndex, offsetBy: 3)
        let binaryGroup = String(paddedBinary[startIndex..<endIndex])
        
        if let octalDigit = Int(binaryGroup, radix: 2) {
            result += String(octalDigit)
        }
    }
    
    print(result)
}
