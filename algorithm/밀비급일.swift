import Foundation

func closeInDays() {
    while let line = readLine() {
        if line == "END" {
            break
        }
        print(String(line.reversed()))
    }
}
