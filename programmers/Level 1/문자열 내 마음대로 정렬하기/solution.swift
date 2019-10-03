func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: {
        if (Array($0)[n] == Array($1)[n]) {
            return $0 < $1
        } else {
            return Array($0)[n] < Array($1)[n]
        }})
}
