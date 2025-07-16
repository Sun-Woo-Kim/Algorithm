import Foundation

func solution(_ s:String) -> String {
    let dist = (s.count % 2 == 1) ? (s.count / 2) : (s.count / 2 - 1)
    return String(s[s.index(s.startIndex, offsetBy: dist)..<s.index(s.endIndex, offsetBy: -dist)])
}

print(solution("abcde")) // 테스트: "c" 출력 예상
