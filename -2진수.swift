import Foundation

func mathSolution10() {
    func nBinary(_ n: Int) -> String {
        var num = n
        var answer = ""
        
        if num == 0 {
            return "0"
        }
        
        while num != 0 {
            if num % 2 == 0 {
                answer = "0" + answer
                num = num / (-2)
            } else {
                if num > 0 {
                    answer = "1" + answer
                    num = num / (-2)
                } else {
                    answer = "1" + answer
                    num = (num - 1) / (-2)
                }
            }
        }
        return answer
    }
    if let input = readLine(), let n = Int(input) {
        print(nBinary(n))
    }
}
