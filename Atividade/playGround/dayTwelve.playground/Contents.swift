/// `Dia 12: Opcionais

import UIKit

/// Aula 1:  Tratamento de dados ausentes

var age: Int? = nil
age = 21


/// Aula 2: Strings unwrapping

var name: String? = nil
func checkNill(name: String?) {
    if let unwrapped = name {
        print("\(unwrapped.count) letters.")
    } else {
        print("Missing name.")
    }
}
checkNill(name: name)
name = "Steve"
checkNill(name: name)



/// Aula 3: Unwrapping com guard

func greet(_ name: String?) {
    guard let unwrapping = name else {
        print("\nYou didn't provide a name!")
        return
    }
    print("Hello, \(unwrapping)")
}

greet(nil)
greet("Steve")



/// Aula 4: Forçar unwrapping

let str = "5"
var num = Int(str)! /// ``A exclamação serve para forçar o Swift a converter a string em um número.
let float = 1.2
num = Int(float)


/// Aula 5: Unwrapping implicitante

var ageImplicitly: Int! = nil

if let ageImplicitly {
    print("hello")
} else {
    print("goodbye")
}


/// Aula 6: Nenhuma coalescência

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let userNil = username(for: 15) ?? "Anonymous"


/// Aula 7: Ecadeamento opcional

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()



/// Aula 8: Tentativa opcional

enum PasswordError: Error {
    case obvious
}

func checkoutPassword(_ password: String) throws -> Bool {
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

if let result = try? checkoutPassword("password"){
    print("That password is good!")
 } else {
    print("D'oh.")
}

try! checkoutPassword("sekrit")
print("OK!")



/// Aula 9: Inicializadores com unwrapping

struct Person {
    var id: String
    
    init?(id: String){
        if id.count == 9 {
            self.id = id
            print("password it's so good!")
        }else {
            print("password it's bad! Min/max 9 charecter.")
            return nil
        }
    }
}

var password = Person(id: "123456789")



/// Aula 10: Tipografia

class Animal{}
class Fish: Animal{}
class Dog: Animal {
    func makeNoise(){
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog{
        dog.makeNoise()
    }
}
