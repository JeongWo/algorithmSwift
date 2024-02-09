import Foundation

func mathSolution7() {
    
    let input = readLine()!.split(separator: " ").map{Int64(String($0))}
    var N = input[0]!
    var B = input[1]!
    var answer = [String]()
    var cnt = 0
    var num: Int64 = 1
    var dt = [Int: String]()
    var arr = [Int64]()
    
    
    while num <= N {
        num = num * B
        cnt += 1
    }
    for i in 0...35 {
        let num = 55
        if i >= 10 {
            dt[i] = String(UnicodeScalar(num+i)!)
        } else {
            dt[i] = String(i)
        }
    }
    
    for i in 0..<cnt {
        var num2: Int64 = 1
        for _ in i+1..<cnt {
            num2 = num2 * B
        }
        if num2 > N {
            arr.append(0)
            continue
        } else  {
            arr.append(N / num2)
            N = N - ((N / num2) * num2)
        }
    }
    
    answer = arr.map{dt[Int($0)]!}
    print(answer.joined(separator: ""))
}
