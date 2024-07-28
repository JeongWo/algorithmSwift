import Foundation

func capitalizeTheFirstLetterOf() {
    
    func readInput() -> [String] {
        guard let n = Int(readLine() ?? "") else { return [] }
        var lines = [String]()
        for _ in 0..<n {
            if let line = readLine() {
                lines.append(line)
            }
        }
        return lines
    }
    
    func capitalizeFirstLetter(of line: String) -> String {
        guard let first = line.first else { return line }
        return first.uppercased() + line.dropFirst()
    }
    
    let lines = readInput()
    for line in lines {
        let capitalizedLine = capitalizeFirstLetter(of: line)
        print(capitalizedLine)
    }
}
