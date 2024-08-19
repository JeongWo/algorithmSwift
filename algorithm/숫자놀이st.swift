import Foundation

func playingWithNumbers() {
    
    let numberToEnglish = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    func convertToEnglish(_ number: Int) -> String {
        let digits = Array(String(number)).map { Int(String($0))! }
        return digits.map { numberToEnglish[$0] }.joined(separator: " ")
    }
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let M = input[0]
    let N = input[1]
    
    var numbers = [(number: Int, english: String)]()
    
    for i in M...N {
        numbers.append((number: i, english: convertToEnglish(i)))
    }
    
    let sortedNumbers = numbers.sorted { $0.english < $1.english }
    
    for (index, element) in sortedNumbers.enumerated() {
        print(element.number, terminator: (index + 1) % 10 == 0 ? "\n" : " ")
    }
    
    if sortedNumbers.count % 10 != 0 {
        print("")
    }
}
