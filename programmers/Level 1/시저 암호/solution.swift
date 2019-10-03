func solution(_ s:String, _ n:Int) -> String {
    let alphabetList = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return s
        .map { ($0.isLowercase, $0, alphabetList.firstIndex(of: Character($0.lowercased()))) }
        .map {
            (isLowercase, char, index) -> String in
            guard let index = index else { return String(char) }
            let movedString = alphabetList[ (index + n) % 26 ]
            return isLowercase ? movedString.lowercased() : movedString.uppercased()
        }.reduce("", +)
}
