/// `Dia 11: Protocolos e extensão

import UIKit

/// Aula 1: Protocolos

/// ``Protocolos são uma forma de descrever quais propriedades e métodos algo deve ter

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displyaID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}



/// Aula 2: Herança com protocolo

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation: Payable, NeedsTraining {
    func takeVacation(days: Int)
}


/// Aula 3: Extensão

extension Int {
    func squared() -> Int {
        return self * self
    }
} /// ``Adiciona uma nova funcionalidade para a struct já existente

let number = 8

number.squared()



/// Aula 4: Protooclos e extensões

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func sumarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.sumarize()
beatles.sumarize()

/// ``POP - Programação Orientada á Protocolo
struct ClassAnimal{
    enum listAnimal {
        case mammal
        case invertebrate
        case bird
    }
}

protocol Animal {
    var canFly: Bool { get }
    var species: String { get }
    var classAnimal: ClassAnimal.listAnimal { get }
   
}

protocol Flyable {
    var maximumSpeed: Double { get }
}

struct Macaw: Animal, Flyable{
    var species: String = "Anodorhynchus leari"
    var canFly: Bool = true
    var maximumSpeed: Double
    var classAnimal: ClassAnimal.listAnimal = .mammal
}

struct Monkey: Animal{
    var species: String = "Sapajus apella"
    var canFly: Bool = false
    var classAnimal: ClassAnimal.listAnimal = .bird
}

struct Snake: Animal{
    var canFly: Bool = false
    var classAnimal: ClassAnimal.listAnimal = .invertebrate
    var species: String = "Ophidia"
    
}

extension Animal{
    var canFly: Bool { return self is Flyable }
}

let eric = Snake()
print("\nCan fly: \(eric.canFly)\nClass for animal: \(eric.classAnimal)\nSpecie for animal: \(eric.species)")



/// Aula 5: POP

protocol IdentifiablePop{
    var id: String { get set }
    func identify()
}

extension IdentifiablePop {
    func identify(){
        print("My Id is \(id).")
    }
}

struct UserPop: IdentifiablePop {
    var id: String
}

let twostraws = UserPop(id: "twostraws")
twostraws.identify()
