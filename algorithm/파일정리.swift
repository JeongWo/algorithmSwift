import Foundation

func OrganizingFiles() {
    
    func readInput() -> [String] {
        var lines = [String]()
        while let line = readLine() {
            lines.append(line)
        }
        return lines
    }
    
    func organizeFiles(byExtensions files: [String]) -> [String: Int] {
        var extensionCount = [String: Int]()
        
        for file in files {
            let components = file.split(separator: ".")
            if components.count == 2 {
                let ext = String(components[1])
                if let count = extensionCount[ext] {
                    extensionCount[ext] = count + 1
                } else {
                    extensionCount[ext] = 1
                }
            }
        }
        
        return extensionCount
    }
    
    let inputs = readInput()
    let N = Int(inputs[0])!
    let files = Array(inputs[1...N])
    
    let extensionCount = organizeFiles(byExtensions: files)
    let sortedExtensions = extensionCount.keys.sorted()
    
    for ext in sortedExtensions {
        if let count = extensionCount[ext] {
            print("\(ext) \(count)")
        }
    }
}
