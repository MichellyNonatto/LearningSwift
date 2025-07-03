// Dia 3: Operadores e Condicões

import UIKit

// Aula 1: Operadores aritméticos

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore // Resto da divisão

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

let isMultiple = 465.magnitude.isMultiple(of: 7) // 465 é multiplo de 7? Não



// Aula 2: Sobrecarga do operador

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Aula 3: Operadores de atribuicão compostos

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the"
quote += "Spaniards"



// Aula 4: Operadores de comparacão

let scoreOne = 6
let scoreTwo = 4

scoreOne == scoreTwo
scoreOne != scoreTwo

scoreOne <= scoreTwo
scoreOne >= scoreTwo

"Taylor" <= "Swift"



// Aula 5: Condicões

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2{
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Rehular cards")
}



// Aula 6: Combinando condicões

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18{
    print("At least one is over 18")
}



// Aula 7: Operadores ternário

let cardOne = 11
let cardTwo = 10

print(cardOne == cardTwo ? "Cards are the same" : "Cards are different")



// Aula 8: Switch Case

let weather = "rain"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wear up warn")
case "sunny":
    print("Wear sunscreen")
    fallthrough // Executa o próximo caso
default:
    print("Enjoy your day!")
}



// Aula 9: Operadores de intervalo

score = 85

switch score {
case 0..<50: // Até, mas excluindo - intervalo semiaberto
    print("You failed bandly.")
case 50...85: // Até, mas incluindo - intervalo fechado
    print("You did OK.")
default:
    print("You did great!")
}

let numbers = [4, 98, 32, 438, 12, 21, 4, 32]
numbers[1...3] // 1 ao 3
numbers[1..<3] // 1 até 3
numbers[3...] // 3 até o fim do array

