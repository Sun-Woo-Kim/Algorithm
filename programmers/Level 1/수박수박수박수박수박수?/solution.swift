func solution(_ n:Int) -> String {
    var result = (n == 1) ? "수" : "수박"
    
    
    while result.count < n {
        let leftNum = n - result.count
        if leftNum == 0 {
            break
        }
        else if leftNum == 1 {
            result += "수"
        } else if leftNum == 2 {
            result += "수박"
        } else if result.count * 2 <= n {
            result += result
        } else {
            let log = Int(_log2(Double(leftNum))) - 1
            let index = result.index(result.startIndex, offsetBy: 2 << log)
            result += String(result[..<index])
        }
    }
    return result
}