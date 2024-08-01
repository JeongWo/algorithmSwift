import Foundation

func findUnseenAndUnheard() {
    let firstLine = readLine()!
    let parts = firstLine.split(separator: " ").map { Int($0)! }
    let n = parts[0]
    let m = parts[1]
    
    var unheard = Set<String>()
    
    for _ in 0..<n {
        let name = readLine()!
        unheard.insert(name)
    }
    
    var unseenAndUnheard = [String]()
    
    for _ in 0..<m {
        let name = readLine()!
        if unheard.contains(name) {
            unseenAndUnheard.append(name)
        }
    }
    
    unseenAndUnheard.sort()
    
    print(unseenAndUnheard.count)
    
    for name in unseenAndUnheard {
        print(name)
    }
}

