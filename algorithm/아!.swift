import Foundation

func ah() {
    if let jaehwan = readLine(), let doctor = readLine() {
        if jaehwan.filter({ $0 == "a" }).count >= doctor.filter({ $0 == "a" }).count {
            print("go")
        } else {
            print("no")
        }
    }
}
