import Foundation

func plate() {
    func calculateDishHeight(dishes: String) -> Int {
        var height = 10
        
        for i in 1..<dishes.count {
            let previousDish = dishes[dishes.index(dishes.startIndex, offsetBy: i - 1)]
            let currentDish = dishes[dishes.index(dishes.startIndex, offsetBy: i)]
            
            if previousDish == currentDish {
                height += 5
            } else {
                height += 10
            }
        }
        
        return height
    }
    
    
    let dishes = readLine()!
    
    print(calculateDishHeight(dishes: dishes))
}
