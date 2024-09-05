import Foundation

func hammigDistance() {
    func calculateHammingDistance(_ binary1: String, _ binary2: String) -> Int {
        var distance = 0
        for (bit1, bit2) in zip(binary1, binary2) {
            if bit1 != bit2 {
                distance += 1
            }
        }
        return distance
    }
    
    if let tStr = readLine(), let t = Int(tStr) {
        for _ in 0..<t {
            if let binary1 = readLine(), let binary2 = readLine() {
                let hammingDistance = calculateHammingDistance(binary1, binary2)
                print("Hamming distance is \(hammingDistance).")
            }
        }
    }
}
