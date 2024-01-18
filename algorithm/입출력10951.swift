// 두 정수 A와 B를 입력받은 다음, A+B 를 출력하는 프로그램을 작성하시오.
// 입력은 여러 개의 테스트 케이스로 이루어져 있다.
// 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)

import Foundation

func inputSolution5() {
    
while let line = readLine() {
    let numbers = line.split(separator: " ").compactMap{ Int(String($0))}
    if numbers.count == 2 {
        let A = numbers[0]
        let B = numbers[1]
        print(A+B)
        }
    }
}
