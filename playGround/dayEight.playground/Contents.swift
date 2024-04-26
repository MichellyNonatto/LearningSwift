/// `Dia 8: Strucs parte 1

import UIKit

/// Aula 1: Criando structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)



/// Aula 2: Propriedades computadas

struct SportComputed {
    var name: String
    var isOlympicsport: Bool
    
    var olympicStatus: String {
        isOlympicsport ? "\(name) is an Olympic sport." : "\(name) is not an Olympic sport."
    }
}

let chessBoxing = SportComputed(name: "Chessboxing", isOlympicsport: false)
print("\n", chessBoxing.olympicStatus)



/// Aula 3: Observadores de propriedades

struct Progress {
    var task: String
    var amount: Int {
        didSet { /// ``Age depois que uma propriedade é alterada - 'willSet' que age antes de uma propriedade ser alterada
            print("\(task) is now \(amount)% complete.")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)

for i in 0...100 {
    if i.magnitude.isMultiple(of: 25){
        progress.amount = i
    }
}



/// Aula 4: Métodos

struct City {
    var population: Int
    
    func collectTaxe() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
print("\nTotal population:",london.collectTaxe())



/// Aula 5: Métodos mutanting

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)



/// Aula 6: Propriedades e métodos de strings
let string = "Do or not, there is no try."
print("\n", string.count) /// ``Conta quantos caracters existem na variável
print(string.hasPrefix("Do")) /// ``Método que retorna verdadeiro ou falso se a string começar com letras específicas
print(string.uppercased()) /// ``Deixa a variável com letras maiúsculas
print(string.sorted()) /// ``Classifica nem ordem os caracters em um array



/// Aula 7: Propriedades e métodos

var toys = ["Woody"]
print("\n", toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())
toys.remove(at: 0)
print(toys.sorted())
