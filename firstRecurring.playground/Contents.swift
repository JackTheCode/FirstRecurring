

let array1 = [2, 5, 1, 2, 3, 5, 1, 2, 4]
let array2 = [2, 1, 1, 2, 3, 5, 1, 2, 4]
let array3 = [2, 3, 4, 5]

func firstRecurring(array: [Int]) -> Int? { // O(n)
    var dic: [Int: Int] = [:]
    for index in 0...array.count - 1 { // O(n)
        if dic[array[index]] != nil {
            return array[index]
        } else {
            dic[array[index]] = index
        }
    }
    return nil
}
print(firstRecurring(array: array1) ?? "Not found")
print(firstRecurring(array: array2) ?? "Not found")
print(firstRecurring(array: array3) ?? "Not found")
