import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int , _ m:Int) -> Int {
    if (ineq == ">" && eq == "=" && n >= m) || (ineq == "<" && eq == "=" && n <= m) || (ineq == ">" && eq == "!" && n > m) || (ineq == "<" && eq == "!" && n < m)
    {
        return 1
    } else {
        return 0
    }
}
