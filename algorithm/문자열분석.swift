import Foundation

func SolutionStr3() {
    
while let input = readLine() {
            var lowercase = 0
            var uppercase = 0
            var digit = 0
            var spc = 0
            
            for char in input {
                if char.isLowercase {
                    lowercase += 1
                } else if char.isUppercase {
                    uppercase += 1
                } else if char.isNumber {
                    digit += 1
                } else if char.isWhitespace {
                    spc += 1
                }
            }
            print("\(lowercase) \(uppercase) \(digit) \(spc)")
        }
}
