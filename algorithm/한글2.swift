import Foundation

func korean2() {
    
    func findHangulIndex(_ character: Character) -> Int {
        let base: Int = 0xAC00
        let choCount = 21 * 28
        let jungCount = 28
        
        guard let unicodeValue = character.unicodeScalars.first?.value else {
            return -1
        }
        let index = Int(unicodeValue) - base
        
        return index + 1
    }
    
    let input = readLine()!.first!
    
    let index = findHangulIndex(input)
    print(index)
}
