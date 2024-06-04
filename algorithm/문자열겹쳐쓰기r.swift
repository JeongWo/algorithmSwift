import Foundation

func OverlappingString(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    var answer = my_string
    let start = my_string.index(my_string.startIndex, offsetBy: s)
    let end = my_string.index(start, offsetBy: overwrite_string.count)
    let range = start..<end
    
    answer.replaceSubrange(range, with: overwrite_string)
    return answer
}
