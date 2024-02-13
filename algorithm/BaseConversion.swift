import Foundation


func mathSolution11() {
    
    func decimal(_ num: [Int], _ base: Int) -> Int {
        var answer = 0
        var pow = 1
        
        for digit in num.reversed() {
            answer += digit * pow
            pow *= base
        }
        return answer
    }
    
    
    func baseB(_ num: Int, _ base: Int) -> [Int] {
        var answer = [Int]()
        var quotient = num
        
        while quotient > 0 {
            answer.append(quotient % base)
            quotient /= base
        }
        return answer.reversed()
    }
    
    if let input1 = readLine()?.split(separator: " ").compactMap({Int($0)}),
       let _ = readLine(),
       let digits = readLine()?.split(separator: " ").compactMap({Int(String($0))}) {
        
        let A = input1[0]
        let B = input1[1]
        let decimalValue = decimal(digits,A)
        let answer = baseB(decimalValue,B)
        
        print(answer.map({String($0)}).joined(separator:" "))
    }
    
}
