func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    if arr.count < 2 {
        return [-1]
    }
    var i = 0

    for t in 0..<arr.count {
        i = arr[t] < arr[i] ? t : i
    }
    arr.remove(at: i)
    return arr
}