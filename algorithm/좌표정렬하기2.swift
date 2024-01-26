import Foundation

func sortSolution3() {
    
let N = Int(readLine()!)!

var Arr: [(Int, Int)] = []

for _ in 0..<N {
    let a = readLine()!.split(separator: " ").map{Int($0)!}
    Arr.append((a[0],a[1]))
}

Arr.sort(by: {
    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
})

for y in 0..<N {
    print("\(Arr[y].0) \(Arr[y].1)")
    }

}
