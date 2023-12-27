
import Foundation

func _solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    return query.enumerated().reduce(into: arr) { arr, query in
        if query.offset % 2 == 0 {
            arr = arr.dropLast(arr.count - query.element - 1).map { $0 }
        } else {
            arr = arr.dropFirst(query.element).map { $0 }
        }
    }
}
