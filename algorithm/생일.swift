import Foundation

func birthday() {
    
    struct Student {
        let name: String
        let birthDate: (year: Int, month: Int, day: Int)
    }
    
    guard let n = Int(readLine()!) else { exit(1) }
    var students: [Student] = []
    
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        let name = String(input[0])
        let day = Int(input[1])!
        let month = Int(input[2])!
        let year = Int(input[3])!
        students.append(Student(name: name, birthDate: (year, month, day)))
    }
    
    if let youngest = students.max(by: {
        $0.birthDate.year != $1.birthDate.year ? $0.birthDate.year < $1.birthDate.year :
        ($0.birthDate.month != $1.birthDate.month ? $0.birthDate.month < $1.birthDate.month :
            $0.birthDate.day < $1.birthDate.day)
    }) {
        print(youngest.name)
    }
    
    if let oldest = students.min(by: {
        $0.birthDate.year != $1.birthDate.year ? $0.birthDate.year < $1.birthDate.year :
        ($0.birthDate.month != $1.birthDate.month ? $0.birthDate.month < $1.birthDate.month :
            $0.birthDate.day < $1.birthDate.day)
    }) {
        print(oldest.name)
    }
}
