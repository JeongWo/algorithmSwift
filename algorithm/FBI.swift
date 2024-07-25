import Foundation


func fbi() {
    var results = [Int]()
    
    for i in 1...5 {
        if let agentName = readLine() {
            if agentName.contains("FBI") {
                results.append(i)
            }
        }
    }
    
    if results.isEmpty {
        print("HE GOT AWAY!")
    } else {
        let output = results.map { String($0) }.joined(separator: " ")
        print(output)
    }
}
