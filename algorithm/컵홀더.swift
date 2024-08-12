import Foundation

func cupholder() {
    
    func maxPeopleWithCupholders(N: Int, seats: String) -> Int {
        var cupholderCount = 0
        var i = 0
        
        while i < N {
            if seats[seats.index(seats.startIndex, offsetBy: i)] == "L" {
                cupholderCount += 1
                i += 2
            } else {
                cupholderCount += 1
                i += 1
            }
        }
        
        return min(cupholderCount + 1, N)
    }
    
    let N = Int(readLine()!)!
    let seats = readLine()!
    
    let result = maxPeopleWithCupholders(N: N, seats: seats)
    print(result)
    
}
