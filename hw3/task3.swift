func generateArray(from number: Int) -> [Int] {
    var result: [Int] = []
    var currentValue = 1
    
    for i in 0..<number {
        result.append(currentValue)
        currentValue *= 2
    }
    
    return result
}

let array = generateArray(from: 5)
print(array)
