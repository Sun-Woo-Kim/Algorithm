import Foundation

func solution(_ win_lose:[Int]) -> Int{
    return win_lose.map{ String($0) }.reduce("", +).split(separator: "0").sorted().last?.count ?? 0
}

func anotherSolution(_ win_lose:[Int]) -> Int{
    var list: [Int] = []
    var count = 0
    win_lose.forEach {
        if $0 == 1 {
            count += 1
            return
        }
        list.append(count)
        count = 0
    }
    list.append(count)
    
    return list.sorted(by: >).first ?? 0
}