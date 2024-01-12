import Foundation

func _solution(_ survey: [String], _ choices:[Int]) -> String {
    var answer: String = ""
    let type = ["RT","CF","JM","AN"]
    var check: [Character: Int] = [:]
    
    type.forEach{
        check[$0.first!] = 0
        check[$0.last!] = 0
    }
    
    zip(survey,choices).forEach{
        if $0.1 < 4 {
            check[$0.0.first!]! += (4 - $0.1)
        } else {
            check[$0.0.last!]! += ($0.1 - 4)
        }
    }
    
    answer = type.map{
        check[$0.first!]! >= check[$0.last!]!
        ? String($0.first!)
        : String($0.last!)
    }.joined()
    
    return answer
}
