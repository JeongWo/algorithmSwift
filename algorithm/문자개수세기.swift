import Foundation

func solution(_ my_string: String) -> [Int] {
    var answer = Array(repeating: 0, count: 52)

    for char in my_string {
        let asciiValue = Int(char.asciiValue!)

        if asciiValue >= 65 && asciiValue <= 90 {
            answer[asciiValue - 65] += 1
        } else if asciiValue >= 97 && asciiValue <= 122 {
            answer[asciiValue - 97 + 26] += 1
        }
    }

    return answer
}
