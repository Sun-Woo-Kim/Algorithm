import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.reduce(into: []) {
        $0.append(array[($1[0]-1)...($1[1]-1)].sorted(by: <)[$1[2]-1])
    }
}
