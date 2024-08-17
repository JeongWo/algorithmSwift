import Foundation

func determineIfYouHavePalindromes() {
    let word = readLine()!
    
    if word == String(word.reversed()) {
        print(1)
    } else {
        print(0)
    }
}
