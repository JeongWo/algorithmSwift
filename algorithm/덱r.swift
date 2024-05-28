import Foundation

func deQueueR() {
    enum CommandCase: String {
        case push_front
        case push_back
        case pop_front
        case pop_back
        case size
        case empty
        case front
        case back
    }
    let N = Int(readLine()!)!
    var answer: [Int] = []
    
    for _ in 0..<N {
        var input = readLine()!.split(separator: " ").map { String($0) }
        guard let command = CommandCase(rawValue: input[0]) else {
            break
        }
        
        switch command {
        case .push_front:
            answer.insert(Int(input[1])!, at: 0)
        case .push_back:
            answer.append(Int(input[1])!)
        case .pop_front:
            if answer.isEmpty { print(-1) } else { print(answer.removeFirst()) }
        case .pop_back:
            if answer.isEmpty { print(-1) } else { print(answer.removeLast()) }
        case .size:
            print(answer.count)
        case .empty:
            print(answer.isEmpty ? 1 : 0)
        case .front:
            print(answer.isEmpty ? -1 : answer[0])
        case .back:
            print(answer.isEmpty ? -1 : answer[answer.count - 1])
        }
    }
}
