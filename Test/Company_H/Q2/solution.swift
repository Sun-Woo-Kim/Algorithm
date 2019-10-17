import Foundation

func solution(_ n:Int) -> String
{
    var dic: [Int: Int] = [ -1: 1, 0 : 0, 1 : 1 ]
    var count = 0
    while dic[n] == nil {
        let i = count < n ? 1 : -1
        dic[count + i] = i * dic[count]! + dic[count - i]!
        count += i
    }
    return "\(dic[n]!)"
}