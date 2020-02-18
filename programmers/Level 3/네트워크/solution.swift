func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var count = 0
    var dict = computers.enumerated()
        .reduce(into: [:]) { $0[$1.offset] = $1.element.enumerated().filter { $0.element == 1 }.map { $0.offset } }
     
    var queue: [Int] = []
    while dict.count > 0 {
        count += queue.isEmpty ? 1 : 0
        queue += (queue.isEmpty ? dict.popFirst()?.value : dict.removeValue(forKey: queue.removeLast())) ?? []
    }
    return count
}
 

