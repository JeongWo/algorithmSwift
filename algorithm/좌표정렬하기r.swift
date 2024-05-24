import Foundation

func sortR() {
    let N = Int(readLine()!)!
    var Arr: [ (Int, Int) ] = []
    
    for _ in 0..<N {
        let a = readLine()!.split(separator: " ").map{Int($0)!}
        Arr.append((a[0], a[1]))
    }
    Arr.sort(by: { $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0 })
    
    for x in 0..<N {
        print("\(Arr[x].0) \(Arr[x].1)")
    }
}
