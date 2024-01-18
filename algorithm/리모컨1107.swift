// 수빈이는 TV를 보고 있다. 수빈이는 채널을 돌리려고 했지만, 버튼을 너무 세게 누르는 바람에, 일부 숫자 버튼이 고장났다.
//리모컨에는 버튼이 0부터 9까지 숫자, +와 -가 있다. +를 누르면 현재 보고있는 채널에서 +1된 채널로 이동하고, -를 누르면 -1된 채널로 이동한다. 채널 0에서 -를 누른 경우에는 채널이 변하지 않고, 채널은 무한대 만큼 있다.
//수빈이가 지금 이동하려고 하는 채널은 N이다. 어떤 버튼이 고장났는지 주어졌을 때, 채널 N으로 이동하기 위해서 버튼을 최소 몇 번 눌러야하는지 구하는 프로그램을 작성하시오.
//수빈이가 지금 보고 있는 채널은 100번이다.

//첫째 줄에 수빈이가 이동하려고 하는 채널 N (0 ≤ N ≤ 500,000)이 주어진다. 둘째 줄에는 고장난 버튼의 개수 M (0 ≤ M ≤ 10)이 주어진다. 고장난 버튼이 있는 경우에는 셋째 줄에는 고장난 버튼이 주어지며, 같은 버튼이 여러 번 주어지는 경우는 없다.
//첫째 줄에 채널 N으로 이동하기 위해 버튼을 최소 몇 번 눌러야 하는지를 출력한다.


import Foundation
func controlSolution() {
    
var N = Int(String(readLine()!))!
let M = Int(String(readLine()!))!
var control: [Int] = []
if M != 0 {
    control = readLine()!.split(separator: " ").map{Int(String($0))!}
}

var minCount = abs(N - 100)
for i in 0...1000000 {
    let answer = check(i)
    if answer > 0 {
        let press = abs(N - i)
        minCount = min(minCount, answer + press)
    }
}
print(minCount)
    
func check(_ i: Int) -> Int{
    var N = i
    if N == 0 {
        if control.contains(0) {
            return 0
        }else{
            return 1
        }
    }
    
    var answer = 0
    
        while N > 0 {
        if control.contains(N % 10)
        {return 0}
        N = N / 10
        answer += 1
    }
    return answer
    }
}
