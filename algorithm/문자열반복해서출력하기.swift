import Foundation

func repeatString() {
    let input = readLine()!.split(separator: " ")
    let str = String(input[0])
    let n = Int(input[1]) ?? 0
    
    if str.count >= 1 && str.count <= 10 && n >= 1 && n <= 5 {
        let repeatedString = String(repeating: str, count: n)
        print(repeatedString)
    } else {
        print("error")
    }
}
func main() {
    repeatString()
}
