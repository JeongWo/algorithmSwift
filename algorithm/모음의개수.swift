import Foundation

func NumberOfVowels() {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    
    func readInput() -> [String] {
        var lines = [String]()
        while let line = readLine() {
            if line == "#" {
                break
            }
            lines.append(line)
        }
        return lines
    }
    
    func countVowels(in line: String) -> Int {
        return line.reduce(0) { count, character in
            return count + (vowels.contains(character) ? 1 : 0)
        }
    }
    
    let lines = readInput()
    for line in lines {
        let vowelCount = countVowels(in: line)
        print(vowelCount)
    }
}
