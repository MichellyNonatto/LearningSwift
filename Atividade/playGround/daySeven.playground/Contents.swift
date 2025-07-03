// Dia 7: Closures, parte 2

import UIKit

// Aula 1: Usando closures como parâmetros quabdo aceitam parâmetros

func travel(action: (String) -> Void){
    print("I'm getting ready to go.")
    action("São Paulo")
    print("I arrived!")
}

travel{ (place: String) in
    print("I'm going to \(place) in my car")
}



// Aula 2: Usando closures como parâmetros quando eles retornam valores

func travelReturn(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Balneário Camboriú")
    print(description)
    print("I arrived!")
}

travelReturn { (place: String) -> String in
        return "I'm going to \(place) in my car"
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int{
    var current = values[0]
    
    for value in values[1...] {
        current = closure(current, value)
    }
    
    return current
}


let numbers = [4, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
        runningTotal + next
}

let sumDois = reduce(numbers, using: +)

print(sum, "\n", sumDois)

// Aula 3: Nome de parâmetros abreviados

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Paraná")
    print(description)
    print("I arrived!")
}

travel {
    return "I'm going to \($0) in my car."
}


// Aula 4: Closures com múltiplos parâmetros

func travelMult(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    print(action("London", 60))
    print("I arrived!")
}

travelMult {
    "I'm going to \($0) at \($1) miles per hour."
}

travelMult{ (place: String, number: Int) in
    "I'm going to \(place) at \(number) miles per hour."
}



// Aula 5: Retornando closures de funções

func travelReturn() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelReturn()
result("Tocantins")

let randomGenerator = { () -> Int in
    return Int.random(in: 0...100)
}

let ramdom = randomGenerator()
print(randomGenerator())
print(ramdom)
print(ramdom)



// Aula 6: Capturando valores

func travelReturnVar() -> (String) -> Void {
    var counter = 1
    return{
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

var resultTwo = travelReturnVar()
resultTwo("Rondônia")
