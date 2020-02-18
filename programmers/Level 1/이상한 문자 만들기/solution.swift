import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ")
        .map {
            $0.enumerated()
                .map { $0.offset % 2 == 1 ? $0.element.lowercased() : $0.element.uppercased() }
                .reduce("", +)
    }.joined(separator: " ")
}
