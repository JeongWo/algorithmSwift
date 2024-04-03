import Foundation

func coin0() {
    
    func minimumCoinCount(_ coinValue: [Int], _ target: Int) -> Int {
        var remainingTarget = target
        var count = 0
        
        var reversedCoinValue = coinValue.reversed()
        
        for coinValue in reversedCoinValue {
            if remainingTarget == 0 {
                break
            }
            
            count += remainingTarget / coinValue
            remainingTarget %= coinValue
        }
        
        return count
    }
    
    let input1 = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input1[0]
    let k = input1[1]
    
    var coinValue = [Int]()
    for _ in 0..<n {
        coinValue.append(Int(readLine()!)!)
    }
    
    let result = minimumCoinCount(coinValue, k)
    print(result)
}
