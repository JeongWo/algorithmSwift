import Foundation

func solutionStr7() {
    
if let s = readLine() {
    var answer = ""
    for x in s {
        if let asciiValue = x.asciiValue {
            var newX = asciiValue
            if (97 <= asciiValue && asciiValue <= 122) {
                newX += 13
                if newX > 122 {
                    newX -= 26
                }
            } else if (65 <= asciiValue && asciiValue <= 90) {
                newX += 13
                if newX > 90 {
                    newX -= 26
                }
            }
            answer += String(UnicodeScalar(newX))
        } else {
            answer += String(x)
        }
    }
    print(answer)
    }
}
