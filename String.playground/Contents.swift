import Foundation

//Написать функцию, выполняющую проверку строки на уникальность содержащихся символов (без учёта регистра)
func isUniqString(_ string: String) -> Bool {
    Set(string.lowercased()).count == string.lowercased().count
}


//Написать функцию, проверяющую строку на палиндром (без учёта регистра)
func isPalindrom(_ string: String) -> Bool {
    guard string.count > 1 else { return true }
    
    for (index, char) in string.lowercased().enumerated() {
        if char != Array(string.lowercased())[string.count - 1 - index] {
            return false
        }
    }
    
    return true
}


//Написать функцию, проверяющую факт содержания одинаковых символов у двух строк (с учётом регистра)
func isContainsSymbol(_ firstString: String, _ secondString: String) -> Bool {
    var count = 0
    
    for char in firstString {
        if secondString.contains(char) {
            count += 1
        }
    }
    
    return count == firstString.count
}


//Написать функцию, выполняющую подсчёт количества повторов указанного символа в строке
func howMuch(_ string: String, _ character: String) -> Int {
    var count = 0
    
    for char in string {
        if String(char) == character {
            count += 1
        }
    }
    
    return count
}


//Написать функцию, выполняющую удаление повторяющихся символов в строке (без учёта регистра)
func deleteDuplicates(_ string: String) -> String {
    var result = String()

    for char in string {
      if !result.lowercased().contains(char) {
      result.append(char)
      }
    }

    return result
}
