import Foundation

func solution(_ board:[[Int]]) -> Int {
    var answer: Int = 0
    let rowLength = board.count
    let colLength = board[0].count
    board.enumerated().forEach { i, row in
        row.enumerated().forEach { j, num in
            let width  = colLength - j
            let height = rowLength - i
            let minLength = width < height ? width : height
            var currentLength = 1
            guard num > 0, minLength > answer else { return }
            for num in (1..<minLength) {
                let isAllSatisfy = board[i...i+num].allSatisfy { $0[j...j+num].allSatisfy { $0 == 1 } }
                if isAllSatisfy {
                    currentLength = num + 1
                }
            }
            answer = answer > currentLength ? answer : currentLength 
        }
    }
    
    return answer * answer
}