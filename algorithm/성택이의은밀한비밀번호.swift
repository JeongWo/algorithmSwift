import Foundation

func SungtaisSecretPassword() {
    
    func isValidPassword(_ password: String) -> String {
        let length = password.count
        return (length >= 6 && length <= 9) ? "yes" : "no"
    }
    
    if let n = Int(readLine()!) {
        for _ in 0..<n {
            if let password = readLine() {
                print(isValidPassword(password))
            }
        }
    }
}
