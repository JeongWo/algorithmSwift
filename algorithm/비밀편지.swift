import Foundation

func secretLetters() {
    let patternToLetter: [String: Character] = [
        "000000": "A", "001111": "B", "010011": "C", "011100": "D",
        "100110": "E", "101001": "F", "110101": "G", "111010": "H"
    ]
    
    let N = Int(readLine()!)!
    let input = readLine()!
    
    var result = ""
    
    func hammingDistance(_ a: String, _ b: String) -> Int {
        return zip(a, b).filter { $0 != $1 }.count
    }
    
    var i = 0
    while i < N {
        let segment = String(input[input.index(input.startIndex, offsetBy: i*6)..<input.index(input.startIndex, offsetBy: (i+1)*6)])
        
        var found = false
        for (pattern, letter) in patternToLetter {
            if hammingDistance(segment, pattern) <= 1 {
                result.append(letter)
                found = true
                break
            }
        }
        
        if !found {
            print(i + 1)
            exit(0)
        }
        
        i += 1
    }
    
    print(result)
}
