import Foundation


func SpecialSchoolNames() {
    let schoolNames = [
        "NLCS": "North London Collegiate School",
        "BHA": "Branksome Hall Asia",
        "KIS": "Korea International School",
        "SJA": "St. Johnsbury Academy"
    ]
    
    if let abbreviation = readLine() {
        if let fullName = schoolNames[abbreviation] {
            print(fullName)
        } else {
            print("Unknown school abbreviation")
        }
    }
}
