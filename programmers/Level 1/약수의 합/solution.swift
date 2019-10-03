func solution(_ n:Int) -> Int {
    if n == 0 { return 0}
    var result = 0
    for i in 1...n {
        result = n % i == 0 ? result + i : result
    }
    return result
}