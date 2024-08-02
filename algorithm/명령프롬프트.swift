import Foundation

func prompt() {
    
    func findPattern(from filenames: [String]) -> String {
        guard let firstFilename = filenames.first else {
            return ""
        }
        
        let filenameLength = firstFilename.count
        var pattern = Array(firstFilename)
        
        for filename in filenames {
            for (i, char) in filename.enumerated() {
                if pattern[i] != char {
                    pattern[i] = "?"
                }
            }
        }
        
        return String(pattern)
    }
    
    if let n = Int(readLine()!), n > 0 {
        var filenames = [String]()
        
        for _ in 0..<n {
            if let filename = readLine() {
                filenames.append(filename)
            }
        }
        
        let pattern = findPattern(from: filenames)
        
        print(pattern)
    }
}
