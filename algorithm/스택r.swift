import Foundation

func stackr() {
    
    enum CommandEnum: String {
        case push
        case pop
        case size
        case empty
        case top
    }
    
    let N = Int(readLine()!)!
    var answer: [Int] = []
    
    for _ in 0..<N {
        let input = readLine()!.split(separator: " ").map{ String($0) }
        guard let command = CommandEnum(rawValue: input[0]) else { break }
        
        switch command {
        case .push:
            answer.append(Int(input[1])!)
        case .pop:
            if answer.isEmpty { print(-1) } else { print(answer.removeLast()) }
        case .size:
            print(answer.count)
        case .empty:
            if answer.isEmpty { print(1) } else { print(0) }
        case .top:
            if let topElement = answer.last {
                print(topElement)
            } else { print(-1) }
        }
    }
}
