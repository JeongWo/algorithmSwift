import Foundation

func year2007() {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let month = [0, 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    let day = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
    
    print(day[(month[1...input[0]].reduce(0, +) + input[1] - 1) % 7])
}
