func solution(_ p:String) -> String {
    guard !p.isEmpty else { return p }
    var (u, v) = seperate(str: p)
    if checkValid(str: u) {
        return u + solution(v)
    } else {
        u.removeFirst()
        u.removeLast()
        return "(" + solution(v) + ")" + u.reduce("") { $0 + ( $1 == "(" ? ")" : "(" ) }
    }
}

func seperate(str: String) -> (u: String, v: String) {
    var str = str
    
    var u = String(str.removeFirst())
    var v = ""
    var count = u == "(" ? 1 : -1
    
    
    str.forEach {
        if count == 0 {
            v += String($0)
        } else {
            count += $0 == "(" ? 1 : -1
            u += String($0)
        }
    }
    return (u, v)
}

func checkValid(str: String) -> Bool {
    var stack: [Character] = []
    for c in str {
        if c == "(" {
            stack.append(c)
        } else {
            if stack.isEmpty { return false }
            stack.removeLast()
        }
    }
    return stack.isEmpty
}
