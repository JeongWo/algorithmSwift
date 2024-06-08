import Foundation

func quequeR() {
    
    enum CommandCase: String {
        case push
        case pop
        case size
        case empty
        case front
        case back
    }
    
    let N = Int(readLine()!)!
    var que: [String] = []
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map {String($0)}
        guard let command = CommandCase(rawValue: input[0]) else {
            break
        }
        
        if command == CommandCase.push {
            que.append(input[1])
        }
        else if command == CommandCase.pop {
            print(que.isEmpty ? -1 : que.removeFirst())
        }
        else if command == CommandCase.size {
            print(que.count)
        }
        else if command == CommandCase.empty {
            print(que.isEmpty ? 1 : 0)
        }
        else if command == CommandCase.front {
            print(que.first ?? -1)
        }
        else {
            print(que.last ?? -1)
        }
        
    }
}
