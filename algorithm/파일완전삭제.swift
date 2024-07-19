import Foundation


func DeleteFilesCompletely() {
    
    let N = Int(readLine()!)!
    let originalBits = readLine()!
    let modifiedBits = readLine()!
    
    func transformBits(_ bits: String, times: Int) -> String {
        if times % 2 == 0 {
            return bits
        } else {
            return String(bits.map { $0 == "0" ? "1" : "0" })
        }
    }
    
    let resultBits = transformBits(originalBits, times: N)
    
    if resultBits == modifiedBits {
        print("Deletion succeeded")
    } else {
        print("Deletion failed")
    }
    
}
