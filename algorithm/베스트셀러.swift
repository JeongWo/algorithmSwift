import Foundation

func bestSeller() {
    
    let N = Int(readLine()!)!
    var bookSales = [String: Int]()
    
    for _ in 0..<N {
        let bookTitle = readLine()!
        if let count = bookSales[bookTitle] {
            bookSales[bookTitle] = count + 1
        } else {
            bookSales[bookTitle] = 1
        }
    }
    
    let mostSoldBooks = bookSales.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        }
        return $0.value > $1.value
    }
    
    if let bestSeller = mostSoldBooks.first {
        print(bestSeller.key)
    }
}
