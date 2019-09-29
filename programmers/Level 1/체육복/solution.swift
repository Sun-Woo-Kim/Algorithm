import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var reserve = reserve
    let count = lost.filter { !reserve.removeIfFind($0) }.sorted(by: <).filter {
        if reserve.removeIfFind($0 - 1) { return false }
        if reserve.removeIfFind($0 + 1) { return false }
        return true
    }.count
    return n - count
}

extension Array where Element: Equatable {
    @discardableResult mutating func removeIfFind(_ object: Element) -> Bool {
        guard let index = firstIndex(of: object) else { return false }
        remove(at: index)
        return true
    }
}
