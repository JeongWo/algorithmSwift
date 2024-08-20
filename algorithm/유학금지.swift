import Foundation

func StudyAbroadProhibition() {
    
    let removeCharacters = "CAMBRIDGE"
    
    if let input = readLine() {
        var result = ""
        
        for char in input {
            if !removeCharacters.contains(char) {
                result.append(char)
            }
        }
        print(result)
    }
}
