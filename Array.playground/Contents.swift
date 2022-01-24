import Cocoa

//Написать функцию, которая находит числа в массиве, сумма которых равна указанному числу и возращает массив из их индекcов
func findSumm(_ array: [Int], _ target: Int) -> [Int] {
    var resultIndexes = [Int]()
    var dictFromArray = [Int : Int]()
    
    for (index, value) in array.enumerated() {
        dictFromArray[value] = index
        
        if dictFromArray.keys.contains(target - value) {
            resultIndexes.append(index)
            resultIndexes.append(dictFromArray[target - value]!)
            
            if Array(Set(resultIndexes)).count == 2 {
                return resultIndexes
            } else {
                return []
            }
        }
    }

    return resultIndexes
}
