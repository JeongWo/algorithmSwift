import Foundation

func solution(_ q:Int, _ r:Int, _ code: String)-> String {
    var answer = ""
    
    for (index,char) in code.enumerated() {
        if index % q == r {
            answer.append(char)
        }
    }
        return answer
}
