import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var a = a, b = b, count = 1
    while next(a) != next(b) {
        a = next(a)
        b = next(b)
        count += 1
    }
    return count
}

func next(_ num: Int) -> Int {
    return (num + 1) / 2
}