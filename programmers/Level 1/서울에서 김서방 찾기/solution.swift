func solution(_ seoul:[String]) -> String {
    var result = ""
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
            result = "김서방은 \(i)에 있다"
        }
    }
    return result
}
