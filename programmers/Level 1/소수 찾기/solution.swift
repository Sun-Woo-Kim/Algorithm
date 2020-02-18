func solution(_ n:Int) -> Int {
    var result = 0
    var arr = [Int](2...n)
    while !arr.isEmpty {
        let a = arr.remove(at: 0)
        result += 1
        if a*a > n { break }
        arr = arr.filter{ $0 % a != 0 }
    }
    return result + arr.count
}