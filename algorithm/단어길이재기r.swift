import Foundation


func wordLength() {
    
    let input = readLine() ?? ""
    
    var answer = 0
    
    for _ in input {
        answer += 1
    }
    
    print(answer)
}
