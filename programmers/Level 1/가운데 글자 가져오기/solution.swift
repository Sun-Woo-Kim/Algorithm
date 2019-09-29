import Foundation

func solution(_ s:String) -> String {
    let dist = (s.count % 2 == 1) ? (s.count / 2) : (s.count / 2 - 1)
    return String(s[s.index(s.startIndex, offsetBy: dist)..<s.index(s.endIndex, offsetBy: -dist)])
}
