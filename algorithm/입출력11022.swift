//두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
//첫째 줄에 테스트 케이스의 개수 T가 주어진다.
//각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)
//각 테스트 케이스마다 "Case #x: A + B = C" 형식으로 출력한다. x는 테스트 케이스 번호이고 1부터 시작하며, C는 A+B이다.


import Foundation

func inputSolution8() {
    

let T = Int(readLine()!)!

for i in 1...T {
    let input = readLine()!.split(separator: " ")
        let A = Int(input[0])!
        let B = Int(input[1])!
    if A < 0 || A >= 10 || B < 0 || B >= 10 {
        print("error")
        continue
    }
    let C = A + B
    let answer = ("Case #\(i): \(A) + \(B) = \(C)")
        print(answer)
    }
}

