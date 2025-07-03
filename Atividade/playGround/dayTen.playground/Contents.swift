/// `Dia 10: Classes

import UIKit

/// Aula 1: Criando uma Classe

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

var poppy = Dog(name: "Poppy", breed: "Poodle")



/// Aula 2: Herança de classes

class Poodle: Dog {
    init(name: String){
        super.init(name: name, breed: "Poodle")
    }
}

var poppyInheritance = Poodle(name: "Poppy")



/// Aula 3: Subtituindo métodos

class DogMakeNoise {
    func makeNoise(){
        print("Woof!")
    }
}

class PoodleMakeNoise: DogMakeNoise {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppyMakeNoise = PoodleMakeNoise()
poppyMakeNoise.makeNoise()



/// Aula 4: Classes finais

final class DogFinal { // Outras classes não poderão herdar dessa
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise(){
        print("Woof!")
    }
}

/// ``class PoodleFinal: DogFinal {
///    ``override func makeNoise() {
///        ``print("Yip!")
///    ``}
///``} <error>



/// Aula 5: Copiando objetos

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)


/// Aula 6: Desinicializadores

class Person {
    private var count: Int
    var name = "John Doe"
    
    init(count: Int) {
        self.count = 20 + count
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name) and i have \(count) years old.")
    }
    
    deinit {
        print("\(name) is no more!\n")
    }
}

for i in 1...3 {
    let person = Person(count: i)
    person.printGreeting()
}



/// Aula 7: Mutabilidade

class SingerMutanting {
    let name = "Taylor Swift"
}

let taylor = SingerMutanting()
/// ``<error> taylor.name = "Ed Sheeran"
print(taylor.name)
