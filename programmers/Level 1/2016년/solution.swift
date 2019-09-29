import Foundation
func solution(_ a:Int, _ b:Int) -> String {

    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy-MM-dd"

    let dateFormatterPrint = DateFormatter()
    dateFormatterPrint.dateFormat = "EEE"

    let date = dateFormatterGet.date(from: "2016-\(a)-\(b)")
    return dateFormatterPrint.string(from: date!).uppercased()
}
