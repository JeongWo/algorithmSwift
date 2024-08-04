import Foundation

func reverseWordsInString(_ input: String) -> String {
    var result = [String]()
    var isInTag = false
    var currentWord = ""
    
    for char in input {
        if char == "<" {
            if !currentWord.isEmpty {
                result.append(String(currentWord.reversed()))
                currentWord.removeAll()
            }
            isInTag = true
            result.append(String(char))
        } else if char == ">" {
            isInTag = false
            result.append(String(char))
        } else if isInTag {
            result.append(String(char))
        } else if char.isWhitespace {
            if !currentWord.isEmpty {
                result.append(String(currentWord.reversed()))
                currentWord.removeAll()
            }
            result.append(String(char))
        } else {
            currentWord.append(char)
        }
    }
    
    if !currentWord.isEmpty {
        result.append(String(currentWord.reversed()))
    }
    
    return result.joined()
}

let inputString = readLine()!
