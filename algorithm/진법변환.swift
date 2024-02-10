import Foundation

func mathSolution8() {
    
    func charToNum(_ char: Character) -> Int {
        if let asciiValue = char.asciiValue {
            if asciiValue >= 48 && asciiValue <= 57 {
                return Int(asciiValue - 48)
            } else {
                return Int(asciiValue - 55)
            }
        }
        return 0
    }
    
    func baseConversion(_ num: String, _ fromBase: Int) -> Int {
        var result = 0
        let reversedNum = num.reversed()
        
        for (index, char) in reversedNum.enumerated() {
            let digitValue = charToNum(char)
            result += digitValue * Int(pow(Double(fromBase), Double(index)))
        }
        
        return result
    }
    
    if let input = readLine()?.split(separator: " ").map({ String($0) }), input.count == 2 {
        let N = input[0]
        let B = Int(input[1]) ?? 0
        
        let decimalValue = baseConversion(N, B)
        print(decimalValue)
    }
}
