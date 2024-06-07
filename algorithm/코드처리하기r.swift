import Foundation

func codeHandling(_ code:String) -> String {
    var ret = ""
    var mode = 0
    
    for (idx,char) in code.enumerated() {
        if char == "1" {
            mode = 1 - mode
        } else {
            if (mode == 0 && idx % 2 == 0) || (mode == 1 && idx % 2 == 1) {
                ret.append(char)
            }
        }
    }
    if ret.isEmpty {
        return "EMPTY"
    } else {
        return ret
    }
}
