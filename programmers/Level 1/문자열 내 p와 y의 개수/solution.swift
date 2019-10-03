import Foundation

func solution(_ s:String) -> Bool {
    var p = 0
    var y = 0
    s.lowercased().forEach {
        p = ($0 == "p") ? p + 1 : p
        y = ($0 == "y") ? y + 1 : y
    }
    return p == y
}
