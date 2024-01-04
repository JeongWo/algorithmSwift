import Foundation

func swapsolution(_ str: String) -> String {
    var answer = ""
    
    for i in str {
        if i.isUppercase {
            answer.append(i.lowercased())
        } else if i.isLowercase {
            answer.append(i.uppercased())
        } else {
            answer.append(String(i))
        }
    }
    return answer
}

func input() {
    if let s1 = readLine() {
        let swap = swapsolution(s1)
        print(swap)
    } else {
        print("error")
    }
}

func swapmain() {
    input()
}
