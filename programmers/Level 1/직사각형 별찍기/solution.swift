import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(Array(repeating: Array(repeating: "*", count: a).joined(), count: b).joined(separator: "\n"))