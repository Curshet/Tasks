import Foundation

//Написать функцию, выполняющую проверку строки на уникальность содержащихся символов (учёт регистра)
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


//Написать функцию, проверяющую факт содержания одинаковых символов у двух строк (учёт регистра)
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


//Написать функцию, выполняющую удаление множественных пробелов (подряд) в строке, оставляя лишь один
func deleteSpaces(_ string: String) -> String {
    var result = String()
    
    for (index, char) in Array(string).enumerated() {
        if !(String(char) == " " && Array(string)[index + 1] == char) {
            result.append(String(char))
        }
    }
    
    return result
}


//Написать функцию, проверяющую факт того, что одна строка является перевёрнутой версий другой строки (учёт регистра)
func revertCheck(_ firstString: String, _ secondString: String) -> Bool {
    guard firstString.count == secondString.count else { return false }
    
    var result = Bool()
    
    for (index, char) in firstString.enumerated() {
        if char == Array(secondString)[secondString.count - 1 - index] {
            result = true
        } else {
            return false
        }
    }
    
    return result
}


//Написать функцию, проверяющую факт того, что строка является панграммой (без учёта регистра)
func pangrammCheck(_ string: String) -> Bool {
    guard string.count >= 26 else { return false }
    
    var result = false
    let alphabet = "qwertyuiopasdfghjklzxcvbnm"
    
    for char in string.lowercased() {
        if alphabet.contains(char) {
            result = true
        } else {
            return false
        }
    }
    
    return result
}


//Написать функцию, которая считает количество гласных и согласных в строке и возращает тюпл с соотв. значениями
func checkLetters(_ string: String) -> (vowels: Int, consonants: Int) {
    let glLetters = "eyuioa"
    let sgLetters = "qwrtpsdfghjklmnbvcxz"
    var vowels = 0
    var consonants = 0
    
    for char in string.lowercased() {
        if glLetters.contains(char) {
            vowels += 1
        } else if sgLetters.contains(char) {
            consonants += 1
        }
    }

    return (vowels, consonants)
}
