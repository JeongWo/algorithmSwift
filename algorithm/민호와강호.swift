import Foundation


func minhoKangho() {
    
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    
    let x1 = input[0], y1 = input[1]
    let x2 = input[2], y2 = input[3]
    let x3 = input[4], y3 = input[5]
    let x4 = input[6], y4 = input[7]
    
    func minho(_ p: Double) -> [Double] {
        return [x1 + (x2 - x1) * (p / 100), y1 + (y2 - y1) * (p / 100)]
    }
    
    func kangho(_ p: Double) -> [Double] {
        return [x3 + (x4 - x3) * (p / 100), y3 + (y4 - y3) * (p / 100)]
    }
    
    var a: Double = 0
    var b: Double = 100
    var length = sqrt(pow(10000, 2) + pow(10000, 2))
    
    while (b - a >= 1e-7) {
        let k1 = (a * 2 + b) / 3
        let k2 = (a + 2 * b) / 3
        
        let m_k1 = minho(k1)
        let m_k2 = minho(k2)
        
        let k_k1 = kangho(k1)
        let k_k2 = kangho(k2)
        
        let dist_k1 = sqrt(pow(m_k1[0] - k_k1[0], 2) + pow(m_k1[1] - k_k1[1], 2))
        let dist_k2 = sqrt(pow(m_k2[0] - k_k2[0], 2) + pow(m_k2[1] - k_k2[1], 2))
        
        length = min(length, min(dist_k1, dist_k2))
        
        if (dist_k1 >= dist_k2) {
            a = k1
        } else {
            b = k2
        }
    }
    
    print(String(format: "%.10f", length))
}
