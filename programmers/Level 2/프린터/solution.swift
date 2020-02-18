import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var list = priorities.enumerated().map { $0 }
    var count = 1
    func next() {
        let first = list.remove(at: 0)
        if list.allSatisfy({ first.element >= $0.element }) {
            if first.offset == location { return }
            count += 1
        } else { list.append(first) }
        next()
    }
    next()
    return count
}