// Dia 5: Funções

import UIKit

// Aula 1: Funções de escrita

func printHelp(){
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
Myapp will resize them all into thumbnails
"""
    
    print(message)
}

printHelp()


// Aula 2: Aceitando parâmetros

func square(number: Int){
    print(number * number)
}

square(number: 8)



// Aula 3: Retornando valores

func mult(number: Int) -> Int{
    return number * number
}

mult(number: 7)

func greet(name: String) -> String {
    let response = if name == "Taylor Swift" {
        "Oh wow! "
    }else {
        "Hello, \(name)"
    }
    
    return response
}

print(greet(name: "Taylor Swift"))



// Aula 4: Rórulos de parâmetros

func sayHello(to name: String) {
    print("Hello, \(name)!") // name é utilizado internamente
}



// Aula 5: Omitindo rótulos de parâmetros

func printHello(_ name: String){
    print("Hello, \(name)!")
}
printHello("Taylor")



// Aula 6: Parâmetro padrão

func greetParameters(_ person: String, nicely: Bool = true) {
    print(nicely == true ? "Hello \(person)!" : "Oh no, it's \(person) again...")
}

greetParameters("Taylor")
greetParameters("Taylor", nicely: false)



// Aula 7: Funções variáveis

func squareVariable(_ numbers: Int...){
    for number in numbers {
        print("\(number) square is \(number ^ 2)")
    }
}


squareVariable(8, 09, 86 ,5, 32)



// Aula 8: Escrevendo funções throwing

enum PasswordError: Error {
    case obvius
}

func checkoutPassword(_ password: String) throws -> Bool{
    if password == "password"{
        throw PasswordError.obvius
    }
    
    return true
}

// Aula 9: Execultando funções throwing

let password = "password1"

do {
    try checkoutPassword(password)
    print("That password is good!")
} catch {
    print("You can't use that pasword.")
}



// Aula 10: Parâmetros de entrada

func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 8
doubleInPlace(number: &myNum)

