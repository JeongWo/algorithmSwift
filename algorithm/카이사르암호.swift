import Foundation

func CaesarPassword() {
    
    func decodeCaesarCipher(_ text: String) -> String {
        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var decodedText = ""
        
        for char in text {
            if let index = alphabet.firstIndex(of: char) {
                let newIndex = (index - 3 + 26) % 26
                decodedText.append(alphabet[newIndex])
            }
        }
        return decodedText
    }
    
    if let input = readLine() {
        let originalText = decodeCaesarCipher(input)
        print(originalText)
    }
    
}
