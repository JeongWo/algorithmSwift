import Foundation

func dpSolution10() {
    
    let N = Int(readLine()!)!
    let A = readLine()!.split(separator:" ").compactMap{$0}
    let rA = Array(A.reversed())
    var pDp = [Int](repeating: 1, count: N)
    var mDp = [Int](repeating: 1, count: N)
    
    for i in 1..<N {
        for j in 0..<i {
            if A[j] < A[i] {
                pDp[i] = max(pDp[i], pDp[j]+1)
            }
            if rA[j] < rA[i] {
                mDp[i] = max(mDp[i], mDp[j]+1)
            }
        }
    }
    
    var maxL = 0
    for i in 0..<N {
        maxL = max(maxL, pDp[i] + mDp.reversed()[i] - 1)
    }
    
    print(maxL)
}
