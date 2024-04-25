// Dia 6: Closures, parte 1

import UIKit

// Aula 1: Criando fechamentos básicos

let driving = {
    print("I'm driving in my car")
}

driving()



// Aula 2: Aceitando parâmetros em um closure

let drivingParameter = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingParameter("London")



// Aula 3: Retornando valores de um closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

print(drivingWithReturn("Paris"))


let payment = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}

payment()

// Aula 4: Closures com parâmetros

func travel(action: () -> Void){
    print("I'm getting read to go.")
    action()
    print("I arrived!")
}

travel(action: driving)



// Aula 5: Sintaxe de fechamento final

travel {
    print("I'm driving my car again")
}
