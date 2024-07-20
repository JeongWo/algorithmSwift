import Foundation

func PalindromicNumber() {
    while let line = readLine(), let number = Int(line), number != 0 {
        
        let numberString = String(number)
        let reversedString = String(numberString.reversed())
        
        if numberString == reversedString {
            print("yes")
        } else {
            print("no")
        }
    }
}
