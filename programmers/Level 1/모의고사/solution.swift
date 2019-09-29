import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let person1 = [1, 2, 3, 4, 5]
    let person2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let person3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    let persons = [person1, person2, person3].map { person -> [Int] in
        let count = answers.count / person.count + (answers.count % person.count > 0 ? 1 : 0)
        let array = [[Int]].init(repeating: person, count: count).reduce([], +)
        return array
    }
     
    let answersCountArray = persons.map { person in
        answers.enumerated().filter { $1 == person[$0] }.count
    }
    let sortedArray = answersCountArray.enumerated().sorted { $0.element > $1.element }
 
    guard let maxCount = sortedArray.first?.element else { return [] }
    
    let result = sortedArray
        .filter { $0.element == maxCount }
        .map { $0.offset + 1 }
        .sorted(by: <)
    
    return result
}
