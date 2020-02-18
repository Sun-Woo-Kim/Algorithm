struct File {
    let header: String
    let number: Int
    let tail: String
    let fileName: String
    init(fileName: String) {
        
        self.fileName = fileName
        var tempFileName = fileName
        let lowerFileName = fileName.lowercased()
        let array = lowerFileName.components(separatedBy: .decimalDigits)
        header = array.first!
        tail = array.last!
        tempFileName.removeFirst(header.count)
        tempFileName.removeLast(tail.count)
        number = Int(tempFileName)!
        
    }
}

func solution(_ files:[String]) -> [String] {
    return files
        .map { File(fileName: $0) }
        .sorted { $0.header < $1.header ? true : $0.number < $1.number }
        .map { $0.fileName }

}
