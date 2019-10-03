import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    return d.sorted().reduce((0, 0)) { arg1, element in
        let (count, amount) = arg1
        guard amount + element <= budget else { return arg1 }
        return (count + 1, amount + element)
    }.0
}