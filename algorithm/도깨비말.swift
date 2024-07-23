import Foundation

func goblinsLanguage() {
    
    func isVowel(char: Character) -> Bool {
        return "aeiou".contains(char)
    }
    
    func convertToPigLatin(word: String) -> String {
        if word.isEmpty {
            return ""
        }
        
        var wordArray = Array(word)
        
        if isVowel(char: wordArray[0]) {
            return word + "ay"
        } else {
            var index = 0
            while index < wordArray.count && !isVowel(char: wordArray[index]) {
                index += 1
            }
            
            if index == wordArray.count {
                return word + "ay"
            } else {
                let prefix = wordArray[0..<index]
                let suffix = wordArray[index..<wordArray.count]
                return String(suffix) + String(prefix) + "ay"
            }
        }
    }
    
    while let input = readLine(), input != "#" {
        let pigLatinWord = convertToPigLatin(word: input)
        print(pigLatinWord)
    }
}
